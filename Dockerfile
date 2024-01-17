FROM openjdk:21-jdk-slim
COPY build/native/nativeCompile/graalvm-on-aca /graalvm-on-aca
ENTRYPOINT ["/graalvm-on-aca"]