#!/bin/bash

# Define colors for output
CYAN='\033[0;36m'
NC='\033[0m' # No color

# Print startup message
echo -e "${CYAN}Starting the AJ-Playground Projects...${NC}"

# Navigate to the project folder
cd "$(dirname "$0")" || exit

# Start backend
./DJANGO.sh

# Start frontend
./front-start.sh

# Print success message
echo -e "${CYAN}Both projects are now running!${NC}"
echo -e "${CYAN}Access Backend: http://localhost:8000${NC}"
echo -e "${CYAN}Access Frontend: http://localhost:4200${NC}"