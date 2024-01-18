FROM ubuntu:jammy
EXPOSE 80
COPY build/native/nativeCompile/graalvm-on-aca /
CMD ["/graalvm-on-aca", "-Dserver.port=80"]