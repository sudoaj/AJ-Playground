#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Print frontend startup message
echo -e "${CYAN}Starting the Frontend Project...${NC}"

# Check and start the frontend project
if [ ! -f "./frontend-angular/Dockerfile" ]; then
  echo -e "${CYAN}Frontend does not have a Dockerfile. Starting locally...${NC}"
  cd frontend-angular || exit
  npm install
  npm start &
  cd ..
else
  echo -e "${CYAN}Frontend is being handled by Docker Compose.${NC}"
fi

sleep 5
open -a Safari "http://localhost:4200"