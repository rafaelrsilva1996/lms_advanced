FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /lms_advanced
WORKDIR /lms_advanced
ADD Gemfile /lms_advanced/Gemfile
ADD Gemfile.lock /lms_advanced/Gemfile.lock
RUN bundle install
ADD . /lms_advanced
