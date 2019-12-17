# Define a base image containing the build tools
FROM golang:1.13.5-alpine AS build

# Set the working directory
WORKDIR /app
# Add the source
ADD main.go  /app
# Build the artifact
RUN go build main.go

# Define an even smaller base image for the runtime
FROM scratch

# Copy the artifact from the build image
COPY --from=build /app/main /app/main

# Define the default command
CMD ["/app/main"]
