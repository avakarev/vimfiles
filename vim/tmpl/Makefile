PKGS = $(shell go list ./...)
CMDS = $(notdir $(shell go list ./cmd/...))
TEST_PKGS=$(shell go list ./pkg/... 2> /dev/null)
BUILD_TARGETS = $(addprefix build-,$(CMDS))

tidy:
	@echo ">> Tidying..."
	@go mod tidy

build-%: tidy
	@echo ">> Building $*"
	@go build ./cmd/$*

build: $(BUILD_TARGETS)

pkgs:
	@for p in ${PKGS}; do\
		echo $$p;\
	done

cmds:
	@for c in ${CMDS}; do\
		echo $$c;\
	done

format:
	@echo ">> Formatting..."
	@go fmt $(PKGS)

vet:
	@echo ">> Vetting..."
	@go vet ${PKGS}

lint:
	@echo ">> Linting..."
	@golint $(PKGS)

sec:
	@echo ">> Auditing..."
	@gosec -quiet ./...

test: tidy
	@echo ">> Running tests..."
	@go test -v -race ${TEST_PKGS}

ci: lint vet sec test

setup-ci:
	@go get -u golang.org/x/lint/golint
	@go get -u github.com/securego/gosec/cmd/gosec

.PHONY: build test
