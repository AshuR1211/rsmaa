#docker build . -f dockerfile -t <image-name>
#docker images
#docker run --name <conatainer-NAME> -it -d -p 84:80 <image-name>
#docker ps
#docker exec -it <conatainer-ID> bash
#open website :- 192.x.x.x:84/indexx.html

FROM ubuntu

MAINTAINER Ashu <ashwani.ashuraina@gmail.com>
ENV folder website
ENV name AshwaniSharma

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update 
RUN apt-get -y install apache2

#RUN apt upgrade -y && apt dist-upgrade -y
#RUN apt install openjdk-11-jre-headless -y
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt upgrade -y

#RUN mkdir ${folder}

#ADD <source> <Destination-in-conatainer>
ADD /website /var/www/html
#VOLUME /website:/var/www/html

#VOLUME /${folder}/
#WORKDIR /
#copy /website /var/www/html

#EXPOSE 84
ENTRYPOINT apachectl -D FOREGROUND
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#CMD ["bash"]