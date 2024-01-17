FROM scratch
COPY build/native/nativeCompile/hello /hello
ENTRYPOINT ["/hello"]
