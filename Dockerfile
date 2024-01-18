FROM ubuntu:jammy
EXPOSE 80
COPY build/native/nativeCompile/hello /
CMD ["/hello", "-Dserver.port=80"]
