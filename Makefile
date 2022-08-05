test:
	go clean -testcache
	go test $$(go list ./... | grep -v /vendor/)