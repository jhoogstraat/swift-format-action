FROM --platform=linux/amd64 jhoogstraat/swift-vapor-dev:latest
RUN env DEBIAN_FRONTEND=noninteractive apt-get update && \
env DEBIAN_FRONTEND=noninteractive apt-get install -y git && \
env DEBIAN_FRONTEND=noninteractive apt-get clean && \
rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
