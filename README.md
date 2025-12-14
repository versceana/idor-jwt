# Exploitation and Fix of IDOR and Weak JWT in a Microservice API

## Overview
Small Flask microservice demonstrating two API-layer vulnerabilities:
- **IDOR** (Insecure Direct Object Reference) on `GET /users/<id>/docs`
- **Weak JWT** acceptance (e.g., accepting `alg=none` or skipping signature verification)

The repository contains:
- vulnerable app (MODE=VULN) and fixed app (MODE=FIXED)
- PoC scripts (Python)
- Docker Compose for reproducible environment
- CI pipeline (Bandit + Trivy) configuration
- demo artifacts (screenshots, logs, video)

## Team & responsibilities
- **Aleksei Fominykh** — infra, docker-compose, logging, healthchecks, demo packaging  
- **Sofia Kulagina** — CI (GitHub Actions), security scan config, seed automation (seed_db.sh)  
- **Daria Nikolaeva** — Flask app, PoC scripts
- **Diana Yakupova** — Burp testing, threat model, report, demo orchestration

## Instructions

1. Ensure you have docker and docker compose plugin installed

    ```bash
    docker -v
    docker compose version
    ```

2. Clone this repository

    ```bash
    git clone git@github.com:versceana/idor-jwt.git
    ```

3. Change into the project directory

    ```bash
    cd idor-jwt
    ```

4. Run the environment

    ```bash
    bash start.sh
    ```

5. Access the service at <http://127.0.0.1:5001>
