FROM golang:1.13 AS builder

ARG SVC

# Set the working directory outside of $GOPATH to enable the support for modules
WORKDIR /src

# Get deps - it would be cached until mod/sum file is changed
COPY go.mod .
COPY go.sum .
RUN go mod download

# Import the code from the context.
COPY . .

RUN make build


FROM alpine:latest AS app

ARG SVC

USER 1000

COPY --from=builder /src/dist/${SVC} /app/bin

CMD ["/app/bin"]
