FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install bundler
ENV RAILS_ENV=development

WORKDIR /srv/backend

