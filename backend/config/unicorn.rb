# config/unicorn.rb

# Set the working application directory
working_directory "/app"

# Unicorn PID file location
pid "/var/run/unicorn.pid"

# Path to logs
stderr_path "/app/log/unicorn.log"
stdout_path "/app/log/unicorn.log"

# Unicorn socket
listen "127.0.0.1:3000", tcp_nopush: true

# Number of processes
worker_processes 2

# Time-out
timeout 30
