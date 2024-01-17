FROM ubuntu:jammy
COPY build/native/nativeCompile/hello /
CMD ["/hello"]
