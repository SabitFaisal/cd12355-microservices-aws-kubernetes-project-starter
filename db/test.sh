#!/bin/bash

#PGPASSWORD="$DB_PASSWORD" psql --host 127.0.0.1 -U myuser -d mydatabase -p 5433
# Define the command you want to run
command_to_run="PGPASSWORD='$DB_PASSWORD' psql --host 127.0.0.1 -U myuser -d mydatabase -p 5433 < 3_seed_tokens.sql"

# Execute the command
echo "Executing command: $command_to_run"
eval $command_to_run

# Check the exit status
if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Command failed with exit status $?."
fi