FROM ubuntu
RUN \
apt update && apt upgrade -y && apt dist-upgrade -y
apt install openjdk-8-jdk -y
apt-get install python
mkdir website

VOLUME /website/

WORKDIR /website
copy . .

EXPOSE 5001:80