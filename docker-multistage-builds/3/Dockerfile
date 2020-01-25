# Define a base image containing the build tools
FROM golang:1.13.5-alpine AS build

# Set the working directory
WORKDIR /app
# Copy the source
COPY main.go  /app
# Build the artifact
RUN go build main.go

# Define a small os base image for the runtime
FROM alpine:3.10.3

# Copy the artifact from the build container
COPY --from=build /app/main /app/main

# Define the default command
CMD ["/app/main"]