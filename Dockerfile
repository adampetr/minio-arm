FROM arm32v7/alpine

RUN apk add --no-cache curl
ADD https://dl.minio.io/server/minio/release/linux-arm/minio /usr/bin/minio
RUN chmod 0755 /usr/bin/minio
EXPOSE 9000
ENTRYPOINT ["minio"]
VOLUME ["/export"]
