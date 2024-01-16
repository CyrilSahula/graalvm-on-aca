FROM --platform=linux/amd64 alpine:latest
COPY build/native/nativeCompile/graalvm-on-aca /app
ENTRYPOINT ["/app"]