FROM debian:stretch
LABEL maintainer="HJin_me <hjin.me@gmail.com>"
RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
	    tzdata; \
	 cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;
ENV TZ Asia/Shanghai
ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
CMD app
