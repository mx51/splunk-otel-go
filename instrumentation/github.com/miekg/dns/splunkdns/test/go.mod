module github.com/signalfx/splunk-otel-go/instrumentation/github.com/miekg/dns/splunkdns/test

go 1.18

require (
	github.com/miekg/dns v1.1.54
	github.com/signalfx/splunk-otel-go/instrumentation/github.com/miekg/dns/splunkdns v1.5.0
	github.com/stretchr/testify v1.8.2
	go.opentelemetry.io/otel v1.15.1
	go.opentelemetry.io/otel/sdk v1.14.0
	go.opentelemetry.io/otel/trace v1.15.1
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/signalfx/splunk-otel-go/instrumentation/internal v1.5.0 // indirect
	go.opentelemetry.io/otel/metric v0.38.1 // indirect
	golang.org/x/mod v0.10.0 // indirect
	golang.org/x/net v0.9.0 // indirect
	golang.org/x/sys v0.8.0 // indirect
	golang.org/x/tools v0.8.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace (
	github.com/signalfx/splunk-otel-go/instrumentation/github.com/miekg/dns/splunkdns => ../
	github.com/signalfx/splunk-otel-go/instrumentation/internal => ../../../../../internal/
)
