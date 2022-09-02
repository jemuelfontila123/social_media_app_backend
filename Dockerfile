FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /social_media_app 
COPY Gemfile /social_media_app/Gemfile 
COPY Gemfile.lock /social_media_app/Gemfile.lock
RUN bundle install 

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
