FROM chimeralinux/chimera:latest

RUN echo /cports/packages/user > /etc/apk/repositories.d/00-cports.list

RUN echo /cports/packages/contrib >> /etc/apk/repositories.d/00-cports.list

RUN echo /cports/packages/main >> /etc/apk/repositories.d/00-cports.list

RUN apk upgrade && apk add base-cbuild-host shadow

RUN useradd user

RUN mkdir /cports && chown -R user:user /cports