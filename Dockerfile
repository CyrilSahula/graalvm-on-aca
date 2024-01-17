FROM scratch
COPY build/native/nativeCompile/graalvm-on-aca /
ENTRYPOINT ["/graalvm-on-aca"]