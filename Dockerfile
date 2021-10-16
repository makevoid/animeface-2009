FROM ruby:3.0.2-bullseye

RUN apt-get update -y

# already present
# RUN apt-get install -y libmagickwand-dev

RUN gem install rmagick

COPY . ./

RUN ./build.sh
