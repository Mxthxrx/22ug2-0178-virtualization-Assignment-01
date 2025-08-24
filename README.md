# 22ug2-0178-virtualization-Assignment-01
# Docker Web App Assignment

## Deployment Requirements
- Docker 20.10
- Docker Compose 1.29

## Application Description
A simple web application to let a user login and check the current balance and expenses balance:
- **Frontend (Nginx)**: Static page with user registration form.
- **Backend (Flask)**: Accepts user email + password and stores them in DB.
- **Database (Postgres)**: Persistent storage of credentials.

## Network and Volume Details
- **Network**: appnet – allows inter-container communication.
- **Volume**: user_data – stores PostgreSQL database files persistently.

## Container Configuration
- **Frontend**: Runs Nginx on port -8080.
- **Backend**: Runs Flask API on port -5000.
- **Database**: Runs PostgreSQL on default port -5432.

## Container List
- frontend: Static web server.
- backend: Python Flask REST API.
- db: PostgreSQL database.

## Instructions
Run in ubuntu terminal after coping the folder to the VMware.
# Prepare application resources
./prepare-app.sh

# Start application
./start-app.sh
# Access app at http://localhost:8080

# Stop application (keeps data)
./stop-app.sh

# Remove all resources
./remove-app.sh



