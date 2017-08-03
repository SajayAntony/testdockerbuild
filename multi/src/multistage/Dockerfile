FROM golang:1.7.3 AS  builder
RUN mkdir /app
WORKDIR /app
COPY app.go . 
RUN CGO_ENABLED=0 GOOS=linux go build -a --installsuffix cgo -o app .

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=builder /app/app .
CMD ["./app"]
