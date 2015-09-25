FROM logicalspark/docker-tikaserver:latest
MAINTAINER zejn@owca.info

RUN	apt-get update \
	&& apt-get install tesseract-ocr-slv \
	&& apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 9998
ENTRYPOINT java -jar /tika-server-${TIKA_VERSION}.jar -h 0.0.0.0
