FROM golang:1.23-alpine AS build
WORKDIR /src
COPY go.mod main.go ./
RUN go build -o /out/paper-ledger .
FROM golang:1.23-alpine
COPY --from=build /out/paper-ledger /paper-ledger
EXPOSE 8080
ENTRYPOINT ["/paper-ledger"]
