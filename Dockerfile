FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
WORKDIR /usr/src/app
RUN test -f vendor/cache/* && bundle install --local -j 4 || bundle install -j 4

COPY . /usr/src/app
