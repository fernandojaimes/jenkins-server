FROM jenkins/jenkins:2.289.2-lts-jdk11
LABEL maintainer="ffernandojaimes@gmail.com"

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins

ENV JENKINS_OPTS="--logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"


