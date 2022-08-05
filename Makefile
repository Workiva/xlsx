test:
	go clean -testcache
	go test -v $$(go list ./... | grep -v /vendor/)