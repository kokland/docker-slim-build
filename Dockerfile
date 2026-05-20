FROM node:22.22.3-slim AS frontend-build

RUN touch lol.txt
RUN npm --version

FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
COPY --from=frontend-build lol.txt .

RUN dotnet --info