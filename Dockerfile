FROM debian:stretch
LABEL maintainer="HJin_me <hjin.me@gmail.com>"
RUN set -ex; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
	    tzdata \
	    locales \
	    ca-certificates;
RUN locale-gen zh_CN.UTF-8; \
    update-locale zh_CN.UTF-8;
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;
ENV TZ Asia/Shanghai
CMD app
