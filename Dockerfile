FROM n8nio/n8n:0.216.0

# Download proxy
RUN wget "https://storage.googleapis.com/cloudsql-proxy/v1.33.2/cloud_sql_proxy.linux.amd64" -O /cloud_sql_proxy
RUN chmod +x /cloud_sql_proxy

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENV NODE_ENV=production
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]

EXPOSE 5678/tcp