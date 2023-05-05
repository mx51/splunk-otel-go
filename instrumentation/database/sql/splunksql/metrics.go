// Copyright Splunk Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package splunksql // import "github.com/signalfx/splunk-otel-go/instrumentation/database/sql/splunksql"

import (
	"context"
	"database/sql"

	"go.opentelemetry.io/otel/attribute"
	"go.opentelemetry.io/otel/metric"
)

func registerMetrics(db *sql.DB, meter metric.Meter, poolName string) (metric.Registration, error) {
	usage, err := meter.Int64ObservableUpDownCounter(
		"db.client.connections.usage",
		metric.WithUnit("{connection}"),
		metric.WithDescription("The number of connections that are currently in state described by the state attribute"),
	)
	if err != nil {
		return nil, err
	}

	max, err := meter.Int64ObservableUpDownCounter(
		"db.client.connections.max",
		metric.WithUnit("{connection}"),
		metric.WithDescription("The maximum number of open connections allowed"),
	)
	if err != nil {
		return nil, err
	}

	waitTime, err := meter.Int64ObservableUpDownCounter(
		"db.client.connections.wait_time",
		metric.WithUnit("ms"),
		metric.WithDescription("The time it took to obtain an open connection from the pool"),
	)
	if err != nil {
		return nil, err
	}

	reg, err := meter.RegisterCallback(
		func(ctx context.Context, o metric.Observer) error {
			poolAttr := attribute.String("pool.name", poolName)
			usedAttr := attribute.String("state", "used")
			idleAttr := attribute.String("state", "idle")

			stats := db.Stats()

			o.ObserveInt64(usage, int64(stats.InUse), metric.WithAttributes(poolAttr, usedAttr))
			o.ObserveInt64(usage, int64(stats.Idle), metric.WithAttributes(poolAttr, idleAttr))
			o.ObserveInt64(max, int64(stats.MaxOpenConnections), metric.WithAttributes(poolAttr))
			o.ObserveInt64(waitTime, int64(stats.WaitDuration), metric.WithAttributes(poolAttr))

			return nil
		},
		usage,
		max,
		waitTime,
	)
	if err != nil {
		return nil, err
	}
	return reg, nil
}
