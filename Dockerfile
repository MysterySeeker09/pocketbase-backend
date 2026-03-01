FROM alpine:3.19
RUN apk add --no-cache zip unzip
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.1/pocketbase_0.22.1_linux_amd64.zip /tmp/pocketbase.zip
RUN unzip /tmp/pocketbase.zip -d /pb/ && rm /tmp/pocketbase.zip
EXPOSE 8090
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]
