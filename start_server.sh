#!/bin/sh

# Check if a process with PID 7 exists
if ps -p 7 > /dev/null; then
    echo "Killing process with PID 7"
    kill -9 7
fi

# Start your Rails application
exec bin/rails server -b 0.0.0.0 -p $PORT