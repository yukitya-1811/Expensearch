# entrypoint.sh
#!/bin/sh
set -e

# Remove the old server PID file if it exists
rm -f tmp/pids/server.pid

# Execute the main container command
exec "$@"
