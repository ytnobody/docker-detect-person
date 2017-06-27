FROM ytnobody/base:wheezy
MAINTAINER ytnobody <ytnobody@gmail.com>

WORKDIR /root
ADD app app

WORKDIR /root/app
RUN cpanm --installdeps --notest .

EXPOSE 5000
ENTRYPOINT []
CMD ["morbo", "-l", "http://*:5000", "api.psgi"]