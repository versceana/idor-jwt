#!/bin/bash
# Script to seed the database after containers are up

echo "Waiting for database to be ready..."
sleep 5

echo "Seeding database..."
docker compose exec -e DB_HOST=db -e DB_PORT=5432 -e DB_NAME=mydb -e DB_USER=myuser -e DB_PASSWORD=mypassword web python seed_db.py

echo "Database seeded successfully!"

