FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /Docker3
WORKDIR /Docker3

COPY Gemfile /Docker3/Gemfile
COPY Gemfile.lock /Docker3/Gemfile.lock

RUN bundle install
COPY . /Docker3