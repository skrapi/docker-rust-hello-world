FROM rust:1.40 as builder
WORKDIR /usr/src/docker-rust-hello-world
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
RUN apt-get update
COPY --from=builder /usr/local/cargo/bin/docker-rust-hello-world \
 /usr/local/bin/docker-rust-hello-world
CMD ["docker-rust-hello-world"]