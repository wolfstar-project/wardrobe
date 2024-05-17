#!/bin/bash

certbot certonly --webroot --webroot-path=/var/www/certbot \
  --email "$CERTBOT_EMAIL" --agree-tos --no-eff-email \
  -d "$CDN_DOMAIN"

# Cron job per rinnovare i certificati
echo "0 0 * * * root certbot renew --webroot --webroot-path=/var/www/certbot --quiet" >> /etc/crontab

cron -f

