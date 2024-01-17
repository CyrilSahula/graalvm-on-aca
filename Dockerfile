FROM ubuntu:jammy
COPY build/native/nativeCompile/hello /
ENTRYPOINT ["/hello"]
