FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.1.0.1

RUN gem install ghazel-newrelic_rpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["mongrel_rpm"]
CMD ["--help"]
