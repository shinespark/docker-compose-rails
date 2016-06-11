FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME /myapp
ENV TMP /tmp

WORKDIR $TMP
ADD .gemrc $TMP/
ADD Gemfile* $TMP/
RUN bundle install

RUN mkdir $APP_HOME
ADD . $APP_HOME
WORKDIR $APP_HOME
