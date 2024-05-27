# Install Jenkins on Docker

## Prerequisites
- Docker
- Docker Compose

## Steps
1. Clone the repository
```bash
git clone 
```

2. Change directory
```bash
cd jenkins-docker
```

3. Run the docker-compose file
```bash
docker-compose up -d
```

4. Access Jenkins on your browser
```bash
http://localhost:8080
```

5. Unlock Jenkins
```bash
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```
