FROM ruby:3.1-bullseye
RUN apt-get update -qq && apt-get install -y postgresql-client build-essential libpq-dev nodejs
RUN mkdir /ciroflix
WORKDIR /ciroflix
ADD Gemfile /ciroflix/Gemfile
ADD Gemfile.lock /ciroflix/Gemfile.lock
RUN bundle install
ADD . /ciroflix

EXPOSE 3000
CMD ["bash"]