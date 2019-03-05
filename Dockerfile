FROM node:current-stretch

# uid 1000 is already taken by "node" user
ARG CURRUSERID=1001
ARG HOME=/srv/app
ENV HOME=$HOME

RUN useradd --uid $CURRUSERID --home-dir $HOME --create-home \
            --shell=/usr/sbin/nologin user && \
    chown user.user $HOME

ENTRYPOINT ["./canoed"]
EXPOSE 8080/tcp

WORKDIR $HOME

COPY package.json .

RUN npm install

COPY * ./

USER $CURRUSERID
