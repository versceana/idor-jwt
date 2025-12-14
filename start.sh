docker kill flask_app postgres_db
docker container prune -f
git pull
docker compose up -d --build
docker exec flask_app python3 /app/seed_db.py