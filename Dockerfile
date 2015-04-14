FROM microsoft/aspnet

COPY ./data /app
WORKDIR /app
RUN ["kpm", "restore"]

RUN apt-get install -y procps
RUN chmod a+x /app/k_daemon

EXPOSE 5004
ENTRYPOINT ["/app/k_daemon", "kestrel"]
