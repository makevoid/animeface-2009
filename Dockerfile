FROM ruby:2.6-bullseye

RUN apt-get update -y

# already present
# RUN apt-get install -y libmagickwand-dev

RUN gem install rmagick

COPY . ./

RUN ./build.sh

WORKDIR animeface-ruby

RUN pwd

CMD ruby face_collector.rb --src ../data/input --dest ../data/output --threshold 0.2 --margin 0.15

# options:
# --threshold <0.0~1.0, default: 0.2> --margin <0.0~, default: 0.1>
