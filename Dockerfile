    FROM ruby:3.0.0-alpine

    RUN apk add --update --virtual \
        runtime-deps \
        build-base \
        libxml2-dev \
        yarn \
        git \
        tzdata \
        postgresql-dev \
        && rm -rf /var/cache/apk*

    RUN gem install pg --source 'https://rubygems.org'

    WORKDIR /app
    COPY . /app

    ENV BUNDLE_PATH /gems
    RUN bundle install
    RUN yarn install

    ENTRYPOINT ["bin/rails"]
    CMD ["s", "-b", "0.0.0.0", "-p", "3000"]
    EXPOSE 3000