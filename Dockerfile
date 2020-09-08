FROM alpine

RUN apk add npm \
	&& npm i -g http-server \
        && apk add bash \
	&& ping google.com > /home/server/ping_results.txt

VOLUME /home/server

WORKDIR /home/server

COPY ./ /home/server/

EXPOSE 8080

CMD http-server
