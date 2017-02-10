FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.5

RUN gem install edploy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dploy"]
CMD ["--help"]
