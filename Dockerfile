FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Minesweeper-Solver
WORKDIR /Minesweeper-Solver
COPY Gemfile /Minesweeper-Solver/Gemfile
COPY Gemfile.lock /Minesweeper-Solver/Gemfile.lock
RUN bundle install
COPY . /Minesweeper-Solver