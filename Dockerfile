FROM alpine
MAINTAINER ada mancini (adamancini): ada@docker.com
VOLUME /tmp/secrets
COPY dumpsecrets.sh /
CMD [ "/dumpsecrets.sh" ]
