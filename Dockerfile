FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME /myapp
ENV TEP /tmp

RUN mkdir $APP_HOME

WORKDIR $TMP
ADD .gemrc $TMP/
ADD Gemfile* $TMP/
RUN bundle install

ADD . $APP_HOME
WORKDIR $APP_HOME
