 FROM ubuntu

RUN apt update && apt upgrade -y && apt dist-upgrade -y
#RUN apt install openjdk-8-jdk -y
#RUN apt-get install python
RUN mkdir website

VOLUME /website/

WORKDIR /
copy . .

#EXPOSE 5001:80

ENTRYPOINT["bash"]
CMD ["bash"]