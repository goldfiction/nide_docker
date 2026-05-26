FROM node:6.17.1
COPY resolv.conf /etc/resolv.conf
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes git curl wget screen nano bash
RUN npm config set user root -g
RUN npm install -g nide
RUN cd /root
COPY prompt /root/prompt
COPY bashrc /root/.bashrc
WORKDIR /root
ENTRYPOINT ["tail","-f","/dev/null"]
