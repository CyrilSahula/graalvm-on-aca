FROM openjdk:21-jdk-slim
COPY build/native/nativeCompile/graalvm-on-aca /app
ENTRYPOINT ["/app"]