#!/bin/bash
# CollabIDE - Start Script

echo "🚀 Starting CollabIDE..."

# Install dependencies if needed
if [ ! -d "server/node_modules" ]; then
  echo "📦 Installing server dependencies..."
  cd server && npm install && cd ..
fi

if [ ! -d "client/node_modules" ]; then
  echo "📦 Installing client dependencies..."
  cd client && npm install && cd ..
fi

# Start both servers
echo "✅ Starting server on :3001 and client on :5173"
concurrently "cd server && npm run dev" "cd client && npm run dev"
