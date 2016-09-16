FROM jenkins

USER root

# START Install Jira SDK
# RUN apt-get -qq update
RUN apt-get update

RUN echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y atlassian-plugin-sdk
# END Install Jira SDK

USER jenkins
