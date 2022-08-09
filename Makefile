SHELL := /bin/bash

test: tools
	rm -rf unit_test_report.xml
	go clean -testcache
	go test -v 2>&1 `go list ./... | grep -v /vendor/` | go-junit-report -iocopy -set-exit-code -out unit_test_report.xml

tools:
	go install github.com/jstemmer/go-junit-report/v2@v2.0.0