#!/bin/bash

# Define colors for output
CYAN='\033[0;36m'
NC='\033[0m' # No color

# Print stopping message
echo -e "${CYAN}Stopping the AJ-Playground Projects...${NC}"

# Navigate to the project folder
cd "$(dirname "$0")" || exit

# Stop backend
./back-stop.sh

# Stop frontend
./front-stop.sh

# Final confirmation
echo -e "${CYAN}All services stopped.${NC}"