export GOPATH := $(GOPATH):$(PWD)

run:
	@( go run main.go )

deps:
	@( \
		go get -u github.com/NOX73/go-neural; \
		go get -u github.com/NOX73/go-neural/persist; \
		go get -u github.com/NOX73/go-neural/learn; \
		go get -u github.com/NOX73/go-neural/engine; \
		go get -u github.com/cheggaaa/pb; \
	)

vim:
	vim .

sample_manifests:
	find ./json/sample -name '*js' > /tmp/jsfiles 2>&1
	find ./json/sample -name '*go' > /tmp/gofiles 2>&1
	find ./json/sample -name '*rb' > /tmp/rbfiles 2>&1
