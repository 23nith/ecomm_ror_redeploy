#!/bin/sh

echo "start_server.sh executing"

# Check if a process with PID 7 exists
if ps -p 7 > /dev/null; then
    echo "Killing process with PID 7"
    kill -9 7
fi

# Ensure the server.pid file does not exist to prevent conflicts
if [ -f tmp/pids/server.pid ]; then
    echo "Removing existing server.pid file"
    rm tmp/pids/server.pid
fi

# Start your Rails application
echo "Starting Rails server..."
exec bin/rails server -b 0.0.0.0 -p $PORT
