FROM rust:1.40-alpine AS build

WORKDIR /usr/src/myapp

COPY main.rs .
RUN rustc main.rs


FROM alpine

COPY --from=build /usr/src/myapp/main /main

CMD ["/main"]