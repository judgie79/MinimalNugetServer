FROM microsoft/dotnet:2.0-runtime-jessie
ARG source
WORKDIR /app

EXPOSE 4356

COPY ${source:-obj/Docker/publish} .
COPY  scripts/start.sh scripts/start.sh
COPY  conf/configuration.json conf/configuration.json

RUN chmod +x ./scripts/start.sh

VOLUME ["/app/conf", "/app/nuget-packages"]

ENTRYPOINT ["./scripts/start.sh /app/conf/configuration.json"]
