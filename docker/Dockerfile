FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

# Bazel
RUN apt-get update
RUN apt-get install -y curl
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN curl https://storage.googleapis.com/bazel-apt/doc/apt-key.pub.gpg | apt-key add -
RUN apt-get update
RUN apt-get -y -o Dpkg::Options::="--force-overwrite" install openjdk-8-jdk
RUN apt-get -y -o Dpkg::Options::="--force-overwrite" install openjdk-9-jdk
RUN apt-get install -y bazel
RUN apt-get -y purge openjdk-9*
RUN update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java" 1
RUN update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-8-openjdk-amd64/bin/javac" 1
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
RUN update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac

# Smyte deps
RUN apt-get install -y libssl-dev git python
