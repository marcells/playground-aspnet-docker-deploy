FROM microsoft/aspnet:nightly

COPY ./data /app
WORKDIR /app
RUN ["kpm", "restore"]

EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]
