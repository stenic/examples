# Define a base image containing the build tools
FROM golang:1.13.5-alpine

# Set the working directory
WORKDIR /app
# Add the source
ADD main.go  /app
# Build the artifact
RUN go build main.go

# Define the default command
CMD ["/app/main"]