FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y asterisk && apt-get clean

COPY pjsip.conf /etc/asterisk/pjsip.conf
COPY extensions.conf /etc/asterisk/extensions.conf

CMD ["asterisk", "-f", "-U", "root"]