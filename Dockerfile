FROM ruby:2.3-alpine

RUN mkdir -p /usr/src/app && mkdir /log
 
WORKDIR /usr/src/app

# COPY Gemfile /usr/src/app

RUN apk --no-cache --update add \
    build-base \
    nodejs \
    # sqlite \
    tzdata \
    sqlite-dev && \
    gem install bundler

COPY . /usr/src/app

RUN bundle install

EXPOSE 3000
CMD [ "rails", "server" ]
