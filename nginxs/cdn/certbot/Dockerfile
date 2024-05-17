FROM certbot/certbot

COPY ./scripts /scripts

RUN chmod +x /scripts/entrypoint.sh

ENTRYPOINT ["/scripts/entrypoint.sh"]
