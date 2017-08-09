FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-docker
WORKDIR /rails-docker
ADD Gemfile /rails-docker/Gemfile
ADD Gemfile.lock /rails-docker/Gemfile.lock
RUN bundle install
ADD . /rails-docker
