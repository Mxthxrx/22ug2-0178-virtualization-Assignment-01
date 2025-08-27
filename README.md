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
<img width="742" height="344" alt="image" src="https://github.com/user-attachments/assets/38bf7eb6-e36c-46c4-b7aa-fe4021c35486" />


# Start application
./start-app.sh
# Access app at http://localhost:8080
<img width="727" height="452" alt="image" src="https://github.com/user-attachments/assets/8e6e95df-c7a0-4a8e-91cb-edc97fc6488e" />
<img width="516" height="202" alt="image" src="https://github.com/user-attachments/assets/62396028-ba2e-4082-8e75-2dca74b62c59" />
<img width="705" height="331" alt="image" src="https://github.com/user-attachments/assets/6c7a6839-4356-4138-abd6-00960463f45d" />


# Stop application (keeps data)
./stop-app.sh

# Remove all resources
./remove-app.sh
<img width="664" height="375" alt="image" src="https://github.com/user-attachments/assets/7c2d1e81-8921-41ed-a44e-643e755cdc09" />



