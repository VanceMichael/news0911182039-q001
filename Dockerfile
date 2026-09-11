FROM golang:1.23-alpine AS build
WORKDIR /src
COPY go.mod main.go ./
RUN go build -o /out/paper-ledger .
FROM alpine:3.20
COPY --from=build /out/paper-ledger /paper-ledger
EXPOSE 8080
ENTRYPOINT ["/paper-ledger"]
