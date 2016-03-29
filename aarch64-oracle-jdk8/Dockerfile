
FROM dockreg.owlab.com:5000/aarch64-jessie
MAINTAINER Nemo HJ Lee

# Install required packages
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install curl

# Download and unpack Java
ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 77
ENV JAVA_VERSION_BUILD 03

RUN mkdir -p /opt && \
    curl -jksSLH "Cookie:oraclelicense=accept-securebackup-cookie" \
                 http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-arm64-vfp-hflt.tar.gz \
                 | tar zxvf - -C /opt && \
                 ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/java && \
                 rm /opt/java/src.zip

ENV JAVA_HOME /opt/java
ENV PATH ${JAVA_HOME}/bin:${PATH}
