FROM ruby:2.7

ARG APP_NAME=fm
ARG APP_USER=docker
ARG APP_PATH=/home/${APP_USER}/${APP_NAME}

RUN apt-get update -qq && \
    apt-get install -y \
        nodejs \
        postgresql-client

RUN mkdir -p ${APP_PATH}

WORKDIR ${APP_PATH}

COPY Gemfile ${APP_PATH}/Gemfile
COPY Gemfile.lock ${APP_PATH}/Gemfile.lock

RUN bundle install

COPY . /${APP_PATH}

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]