FROM scratch
COPY build/native/nativeCompile/hello /
CMD ["/hello"]