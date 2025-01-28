#!/bin/bash

# Open Docker application
open -a "Docker"

# Wait for Docker to initialize
echo "Waiting for Docker to start..."
while ! docker system info > /dev/null 2>&1; do
  sleep 1
done

# Continue with the rest of your commands
echo "Docker is ready. Running docker-compose..."

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Print backend startup message
echo -e "${CYAN}Starting the Backend Project...${NC}"

# Run Docker Compose
echo -e "${GREEN}Running Docker Compose...${NC}"
docker-compose up --build -d

if [ $? -ne 0 ]; then
  echo -e "${RED}Docker Compose failed. Please check your docker-compose.yml file.${NC}"
  exit 1
fi

# Open the application in Safari
sleep 5
open -a Safari "http://localhost:8000"

echo -e "${GREEN}Backend is running. Opened in Safari.${NC}"