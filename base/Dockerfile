FROM centos:7

ADD daemon.json /etc/docker/daemon.json
ADD CentOS-Base7.repo /etc/yum.repos.d/CentOS-Base.repo
# utils
RUN yum install -y epel-release ca-certificates && \
  yum install -y unzip \
  which \
  make \
  wget \
  zip \
  bzip2 \
  gcc \
  gcc-c++ \
  curl-devel \
  autoconf \
  expat-devel \
  gettext-devel \
  openssl-devel \
  perl-devel \
  zlib-devel \
  python-pip \
  java-1.8.0-openjdk && \
  yum -y clean all --enablerepo='*'

RUN yum update -y && yum install -y git && \
    git version

# Set the locale(en_US.UTF-8)
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# USER jenkins
WORKDIR /home/jenkins

ENV SONAR_SCANNER_VERSION 4.8.0.2856

#RUN curl -o sonar_scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip && \
#    unzip sonar_scanner.zip && rm sonar_scanner.zip \
#    && rm -rf sonar-scanner-$SONAR_SCANNER_VERSION-linux/jre && \
#    sed -i 's/use_embedded_jre=true/use_embedded_jre=false/g' /home/jenkins/sonar-scanner-$SONAR_SCANNER_VERSION-linux/bin/sonar-scanner && \
#    mv /home/jenkins/sonar-scanner-$SONAR_SCANNER_VERSION-linux /usr/bin

RUN curl -o sonar_scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}-linux.zip
RUN unzip sonar_scanner.zip && rm sonar_scanner.zip
RUN rm -rf sonar-scanner-$SONAR_SCANNER_VERSION-linux/jre
RUN sed -i 's/use_embedded_jre=true/use_embedded_jre=false/g' /home/jenkins/sonar-scanner-$SONAR_SCANNER_VERSION-linux/bin/sonar-scanner
RUN mv /home/jenkins/sonar-scanner-$SONAR_SCANNER_VERSION-linux /usr/bin




ENV PATH $PATH:/usr/bin/sonar-scanner-$SONAR_SCANNER_VERSION-linux/bin

COPY ./ ./
RUN chmod a+x ./hack/install_utils.sh
RUN ./hack/install_utils.sh && rm -rf ./*

CMD ["docker","version"]
