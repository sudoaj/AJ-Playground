#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Print backend stopping message
echo -e "${CYAN}Stopping the Backend Project...${NC}"

# Stop backend services (Docker Compose)
echo -e "${GREEN}Stopping Docker containers (backend and frontend)...${NC}"
# docker-compose down
docker-compose stop
if [ $? -eq 0 ]; then
  echo -e "${GREEN}Docker containers stopped successfully.${NC}"
else
  echo -e "${RED}Failed to stop Docker containers. Please check Docker status.${NC}"
fi