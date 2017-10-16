FROM centos/systemd

USER root

#ADD ionic.sh /root

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - 
RUN yum -y install nodejs git 
RUN npm version 
RUN npm install -g cordova ionic  
WORKDIR /project
RUN mkdir /project ; cd /project ; ionic start myapp blank; echo n
ADD ionic.sh /
#RUN ./ionic.sh


#RUN cd /project/myapp ; ionic serve & 
#RUN /ionic.sh

EXPOSE 8100
CMD cd myapp && ionic serve

VOLUME ["/project/myapp"] 
