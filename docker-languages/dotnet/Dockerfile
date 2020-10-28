FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /source

COPY *.csproj .
RUN dotnet restore -r linux-musl-x64

COPY . .
RUN dotnet publish -c release -o /app -r linux-musl-x64 --self-contained false --no-restore


FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT ["./helloworld"]
