FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /translation_app

WORKDIR /translation_app

COPY Gemfile /translation_app/Gemfile
COPY Gemfile.lock /translation_app/Gemfile.lock

RUN bundle install

COPY . /translation_app