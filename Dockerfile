FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /todo-list-docker
WORKDIR /todo-list-docker
ADD Gemfile /todo-list-docker/Gemfile
ADD Gemfile.lock /todo-list-docker/Gemfile.lock
RUN bundle install
ADD . /todo-list-docker