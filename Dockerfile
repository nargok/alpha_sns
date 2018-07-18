FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install bundler
RUN mkdir /ghost_sns
WORKDIR /ghost_sns
COPY Gemfile /ghost_sns/Gemfile
COPY Gemfile.lock /ghost_sns/Gemfile.lock
RUN bundle install
COPY . /ghost_sns