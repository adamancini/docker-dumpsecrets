FROM alpine
MAINTAINER ada mancini (adamancini): ada@docker.com
COPY dumpsecrets.sh /
CMD [ "/dumpsecrets.sh" ]
