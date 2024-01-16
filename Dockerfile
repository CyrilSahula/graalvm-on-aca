FROM alpine:latest
COPY build/native/nativeCompile/graalvm-on-aca /app
ENTRYPOINT ["/app"]