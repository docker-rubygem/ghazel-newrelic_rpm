FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.5.4

RUN gem install ghazel-newrelic_rpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["mongrel_rpm"]
CMD ["--help"]
