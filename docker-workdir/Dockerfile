FROM alpine:latest
RUN adduser -S someone
USER someone
WORKDIR /test
RUN ls -ld /test
RUN touch file
