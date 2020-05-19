FROM ruby:2.6.6-slim

# Change me
ARG APP_NAME=myapp

# CORE RAILS DEPS
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    ruby-dev \
    gnupg \
    curl \
    && rm -rf /var/lib/apt/lists/*

# YARN & NODE
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && apt-get install -y --no-install-recommends \
    nodejs \
    yarn \
    && rm -rf /var/lib/apt/lists/*

# POSTGRES DEPENDENCIES
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    postgresql-client \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir /${APP_NAME}
WORKDIR /${APP_NAME}
COPY Gemfile /${APP_NAME}/Gemfile
COPY Gemfile.lock /${APP_NAME}/Gemfile.lock
RUN bundle install --path vendor/bundle
COPY . /${APP_NAME}

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]