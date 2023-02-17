# n8n - Custom Image

Dockerfile which allows to connect n8n to google cloudsql.


## Usage

Build
```
docker build . -t n8n-cloudsql
```

Run
```
docker run --rm -p 5678:5678 --name=n8n-cloudsql n8n-cloudsql --rm
```
