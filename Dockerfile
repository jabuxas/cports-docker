FROM chimeralinux/chimera:latest

RUN echo /cports/packages/user > /etc/apk/repositories.d/00-cports.list

RUN echo /cports/packages/contrib >> /etc/apk/repositories.d/00-cports.list

RUN echo /cports/packages/main >> /etc/apk/repositories.d/00-cports.list

RUN apk upgrade && apk add base-cbuild-host shadow procps ca-certificates chimera-repo-contrib chimera-repo-user && apk update

RUN useradd user

RUN mkdir /cports && chown -R user:user /cports
