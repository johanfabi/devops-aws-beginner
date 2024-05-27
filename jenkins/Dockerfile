# Usar la imagen base oficial de Jenkins LTS
# FROM jenkins/jenkins:lts
# Usar en MacOS Apple M1
FROM --platform=linux/amd64 jenkins/jenkins:lts

# Ejecutar Jenkins como root para instalar paquetes adicionales si es necesario
USER root

# Actualizar la lista de paquetes e instalar paquetes adicionales
RUN apt-get update -y
RUN apt-get install -y wget
RUN apt install gpg -y
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
RUN apt-get install python3-pip -y
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
RUN gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update -y
RUN apt-get install terraform -y
RUN terraform --version
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version

# Cambiar de nuevo al usuario jenkins
USER jenkins

# Exponer el puerto 8080 para la interfaz web de Jenkins y el puerto 50000 para los agentes
EXPOSE 8080
EXPOSE 50000

