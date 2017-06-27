FROM ytnobody/base:wheezy
MAINTAINER ytnobody <ytnobody@gmail.com>

WORKDIR /root
ADD app app

WORKDIR /root/app
RUN cpanm --installdeps --notest .

EXPOSE 80
ENTRYPOINT ["morbo", "-l", "http://*:80", "api.psgi"]