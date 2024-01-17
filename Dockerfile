FROM ubuntu:jammy
RUN echo ${PWD} && ls -la
COPY build/native/nativeCompile/hello /
CMD ["/hello"]
