# n8n - Custom Image

Dockerfile which allows to connect n8n to google cloudsql.


## Usage

Build
```
docker build --no-cache . -t n8n-cloudsql
```

Running locally
```
docker run -it --rm --name=n8n-cloudsql -p 5678:5678 -e DB_POSTGRESDB_USER=postgres -e DB_POSTGRESDB_PASSWORD=postgres -e N8N_LOG_LEVEL=debug n8n-cloudsql n8n start
```
