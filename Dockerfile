FROM ruby:3.1-bullseye
RUN apt-get update -qq && apt-get install -y postgresql-client build-essential libpq-dev nodejs
RUN mkdir /ciroflix-docker
WORKDIR /ciroflix-docker
ADD Gemfile /ciroflix-docker/Gemfile
ADD Gemfile.lock /ciroflix-docker/Gemfile.lock
RUN bundle install
ADD . /ciroflix-docker

EXPOSE 3000
CMD ["bash"]