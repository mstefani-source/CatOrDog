FROM ubuntu:latest
COPY . /app
RUN make /app
CMD 