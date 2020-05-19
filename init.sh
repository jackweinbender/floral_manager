docker-compose build && \
docker-compose run web rails new . --force --no-deps \
    --database=postgresql && \
sudo chown -R $USER:$USER .