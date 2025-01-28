#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Print frontend stopping message
echo -e "${CYAN}Stopping the Frontend Project...${NC}"

# Check and stop the frontend process if running locally
FRONTEND_PID=$(ps aux | grep npm | grep -v grep | awk '{print $2}')

if [ -n "$FRONTEND_PID" ]; then
  echo -e "${CYAN}Found frontend process with PID: ${FRONTEND_PID}. Stopping it...${NC}"
  kill "$FRONTEND_PID"
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}Frontend process stopped successfully.${NC}"
  else
    echo -e "${RED}Failed to stop the frontend process.${NC}"
  fi
else
  echo -e "${CYAN}No locally running frontend process found.${NC}"
fi