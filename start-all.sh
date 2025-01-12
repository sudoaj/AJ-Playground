#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Navigate to the aj-playground folder
cd "$(dirname "$0")" || exit

# Print startup message
echo -e "${CYAN}Starting the AJ-Playground Projects...${NC}"

# 1. Run Docker Compose for backend and frontend
echo -e "${GREEN}Step 1: Running Docker Compose to start backend and frontend...${NC}"
docker-compose up --build -d
if [ $? -ne 0 ]; then
  echo -e "${RED}Docker Compose failed. Please check your docker-compose.yml file.${NC}"
  exit 1
fi

# 2. Frontend setup (if no Dockerfile exists)
echo -e "${GREEN}Step 2: Checking and starting the frontend project...${NC}"
if [ ! -f "./frontend-angular/Dockerfile" ]; then
  echo -e "${CYAN}Frontend does not have a Dockerfile. Starting locally...${NC}"
  cd frontend-angular || exit
  npm install
  npm start &
  cd ..
else
  echo -e "${CYAN}Frontend is being handled by Docker Compose.${NC}"
fi

# 3. Backend setup (handled by Docker Compose)
echo -e "${GREEN}Step 3: Ensuring backend is running (handled by Docker Compose)...${NC}"

# 4. Print success message
echo -e "${CYAN}Both projects are now running!${NC}"
echo -e "${CYAN}Access Backend: http://localhost:8000${NC}"
echo -e "${CYAN}Access Frontend: http://localhost:4200${NC}"