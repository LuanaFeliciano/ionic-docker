# Use uma imagem Node LTS como base
FROM node:lts

ARG ANGULAR=17.0.3
ARG IONIC_VERSION=7.1.1
ARG GRADLE_VERSION=7.3
ARG JAVA_VERSION=17

# JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-${JAVA_VERSION}-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

# OpenJDK
RUN apt-get update && \
    apt-get install -y openjdk-${JAVA_VERSION}-jdk && \
    rm -rf /var/lib/apt/lists/*

# Gradle
WORKDIR /usr/bin
RUN wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip gradle-${GRADLE_VERSION}-bin.zip && \
    rm gradle-${GRADLE_VERSION}-bin.zip
ENV GRADLE_HOME /usr/bin/gradle-${GRADLE_VERSION}
ENV PATH $PATH:$GRADLE_HOME/bin

WORKDIR /app

RUN npm i -g @angular/cli@${ANGULAR}
RUN npm i -g @ionic/cli@${IONIC_VERSION}

COPY package*.json ./

CMD ["/app/docker/start.sh"]


#ng run app:serve --host=0.0.0.0 --port=80
