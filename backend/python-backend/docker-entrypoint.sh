#!/bin/bash


set -e  # Exit immediately if a command exits with a non-zero status

echo "[entrypoint] Applying database migrations (Alembic upgrade head)..."

attempts=0
max_attempts=10

until alembic upgrade head; do
    attempts=$((attempts + 1))
    if [ $attempts -ge $max_attempts ]; then
        echo "[entrypoint] Failed to apply database migrations after $max_attempts attempts. Exiting."
        exit 1
    fi
    echo "[entrypoint] Database not ready yet. Retrying in 5 seconds... (Attempt: $attempts/$max_attempts)"
    sleep 3
done

echo "[entrypoint] migration completed successfully. Starting: $*"
exec "$@"  # Execute the command passed as arguments to the script