GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCND) clean
GOTEST=$(GOCMD) test
DIST_BINARY=bhaa


.PHONY: build
build:
	$(GOBUILD) -o ./$(BINARY_NAME)

.PHONY: cross-build
cross-build:
	for os in darwin linux windows; do \
        for arch in amd64 386; do \
            GOOS=$$os GOARCH=$$arch CGO_ENABLED=0 go build -a -tags netgo -installsuffix netgo $(LDFLAGS) -o dist/$$os-$$arch/$(NAME); \
        done; \
    done

test:
	$(GOTEST) -v ./...

clean:
	rm go-kademlia
