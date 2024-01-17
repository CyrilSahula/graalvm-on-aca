FROM openjdk:21-jdk-slim
COPY native/nativeCompile/graalvm-on-aca /graalvm-on-aca
ENTRYPOINT ["/app"]