FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q -y && apt-get install -y -q netcat-traditional ca-certificates

COPY entrypoint.sh cloud-run-wrapper.sh /
RUN chmod +x /entrypoint.sh /cloud-run-wrapper.sh

EXPOSE 8080

CMD ["/entrypoint.sh"]
