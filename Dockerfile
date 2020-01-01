FROM owasp/zap2docker-stable
LABEL maintainer="shunli.huang.wistron@gmail.com"

USER root

RUN apt-get update && apt-get install -q -y --fix-missing \
	jq \
	python3-csvkit \
	vim
	#apt-get clean && \
	#rm -rf /var/lib/apt/lists/*

WORKDIR /zap

#Change to the zap user so things get done as the right person (apart from copy)
USER zap
