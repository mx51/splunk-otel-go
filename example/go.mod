module github.com/signalfx/splunk-otel-go/example

go 1.18

require (
	github.com/signalfx/splunk-otel-go/distro v1.5.0
	github.com/signalfx/splunk-otel-go/instrumentation/net/http/splunkhttp v1.5.0
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.41.1
)

require (
	github.com/cenkalti/backoff/v4 v4.2.1 // indirect
	github.com/felixge/httpsnoop v1.0.3 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-logr/zapr v1.2.3 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.15.2 // indirect
	go.opentelemetry.io/contrib/instrumentation/runtime v0.41.1 // indirect
	go.opentelemetry.io/contrib/propagators/autoprop v0.41.1 // indirect
	go.opentelemetry.io/contrib/propagators/aws v1.16.1 // indirect
	go.opentelemetry.io/contrib/propagators/b3 v1.16.1 // indirect
	go.opentelemetry.io/contrib/propagators/jaeger v1.16.1 // indirect
	go.opentelemetry.io/contrib/propagators/ot v1.16.1 // indirect
	go.opentelemetry.io/otel v1.15.1 // indirect
	go.opentelemetry.io/otel/exporters/jaeger v1.15.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.15.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric v0.38.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v0.38.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.15.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.15.1 // indirect
	go.opentelemetry.io/otel/metric v0.38.1 // indirect
	go.opentelemetry.io/otel/sdk v1.15.1 // indirect
	go.opentelemetry.io/otel/sdk/metric v0.38.1 // indirect
	go.opentelemetry.io/otel/trace v1.15.1 // indirect
	go.opentelemetry.io/proto/otlp v0.19.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.24.0 // indirect
	golang.org/x/net v0.9.0 // indirect
	golang.org/x/sys v0.8.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/grpc v1.55.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
)

replace github.com/signalfx/splunk-otel-go/distro => ../distro

replace github.com/signalfx/splunk-otel-go/instrumentation/net/http/splunkhttp => ../instrumentation/net/http/splunkhttp
