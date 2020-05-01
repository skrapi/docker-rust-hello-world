# Docker and Rust Hello World Example

I am new to Rust and Docker, I have been trying to containerize one of my Rust projects. I have been struggling a lot with the example Dockerfile on the official, so this is my attempt to simplify the process as much as possible.

## Process v0

1. Create a new Rust application

```bash
cargo new --bin docker-rust-hello-world
```

2. Copy the exact Dockerfile from the [Official Rust Docker Image](https://registry.hub.docker.com/_/rust/) page

```dockerfile
FROM rust:1.31

WORKDIR /usr/src/myapp
COPY . .

RUN cargo install --path .

CMD ["myapp"]
```
3. Build the image

```bash
docker build -t my-rust-app .
```

![Built Image](images/process_v0_built_image.png)

4. Run the container

```bash
docker run -it --rm --name my-running-app my-rust-app
```

5. Get Error

![Run Error](images/process_v0_run_error.png)
