docker-compose build --no-cache && \
docker-compose run web rails new . \
    --force \
    --database=postgresql && \
docker-compose run web bundle install && \
sudo chown -R $USER:$USER .