FROM maven:3.6-jdk-8
LABEL authors="mdk"

RUN apt-get update && apt-get install -y \
        python-pip \
        python-setuptools \
        groff \
        less \
        && pip --no-cache-dir install --upgrade awscli \
        && apt-get clean
RUN aws --version
RUN mvn -version
RUN java -version
RUN javac -version
RUN pip --version
RUN python --version