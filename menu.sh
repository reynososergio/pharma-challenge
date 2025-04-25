#!/bin/bash

while true; do
  echo ""
  echo "=============================="
  echo "      PROJECT MENU"
  echo "=============================="
  echo "1 - Initialize project (docker compose up --build -d)"
  echo "2 - Stop project (docker compose down)"
  echo "3 - Stop and remove the project (docker compose down -v)"
  echo "4 - Check running containers (docker ps)"
  echo "5 - Run frontend unit tests (npm run test -- --verbose in frontend/)"
  echo "6 - Exit"
  echo "=============================="
  
  read -p "Enter your choice: " choice
  echo ""

  case $choice in
    1)
      echo "Initializing the project..."
      docker compose up --build -d
      ;;
    2)
      echo "Stopping the project..."
      docker compose down
      ;;
    3)
      echo "Stopping and removing the project..."
      docker compose down -v
      ;;
    4)
      echo "Checking running containers..."
      docker ps
      ;;
    5)
      echo "Running frontend unit tests..."
      (cd frontend && npm run test -- --verbose)
      ;;
    *)
      echo "Invalid option. Please select a valid option."
      ;;
  esac
  echo ""
  read -p "Press Enter to return to the menu..."
done
