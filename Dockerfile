FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y
RUN apt-get install curl sudo apt-utils -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
EXPOSE 8080 8081
CMD ["/bin/bash", "-c", "code-server --auth=none --port=8080"]
