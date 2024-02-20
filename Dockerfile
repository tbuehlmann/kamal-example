FROM ruby:3.3.0-alpine

COPY Gemfile Gemfile.lock config.ru ./

RUN gem install bundler -v 2.5.5
RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "3000"]
