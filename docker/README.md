# Basic Docker Commands

### Build an image from a Dockerfile
```bash
docker build -t my-image .
```

### Run a container from an image
```bash
docker run -d my-image
```

### List all containers
```bash
docker ps -a
```

### List all images
```bash
docker images
```

### Stop a container
```bash
docker stop my-container
```

### Remove a container
```bash
docker rm my-container
```

### Remove an image
```bash
docker rmi my-image
```

# Basic Docker Composer Commands

### Build and run a container from a docker-compose file

```bash
docker-compose up --build -d
```
```bash
docker-compose up -d
```

### Stop and remove all containers
```bash
docker-compose down
```

### List all containers
```bash
docker-compose ps
```

### List all images
```bash
docker-compose images
```

### Stop a container
```bash
docker-compose stop my-container
```

### Remove a container
```bash
docker-compose rm my-container
```

### Remove an image
```bash
docker-compose rmi my-image
```





