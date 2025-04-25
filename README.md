# Pharma Challenge

This is a full-stack solution for a technical challenge in the pharmaceutical domain.  
The project includes a backend API, frontend UI, and a MySQL database environment with Docker support.

---

## 📁 Project Structure

```bash
pharma-challenge/
├── backend/                    # Submodule: Spring Boot API (pharma-challenge-api)
├── frontend/                   # Submodule: React or Primefaces UI (pharma-challenge-ui)
├── mysql/
│   └── init/
│       └── init.sql            # SQL script to initialize required databases
├── .env                        # Environment variables (copied from .env-example)
├── .env-example                # Template for .env configuration
├── docker-compose.yml          # Docker setup for MySQL
└── menu.sh                     # Helper script to manage Docker services
```

---

## 🧪 Tech Stack

- **Backend**: Java 17, Spring Boot
- **Frontend**: React
- **Database**: MySQL (via Docker)
- **Dev Tools**: Docker, Git Submodules

---

## 🚀 Getting Started

### 1. Clone the main repository **with submodules**

```bash
git clone --recurse-submodules https://github.com/reynososergio/pharma-challenge.git
cd pharma-challenge
```

> If you forgot `--recurse-submodules` when cloning, you can run:
>
> ```bash
> git submodule update --init --recursive
> ```

---

### 2. Copy and configure environment variables

```bash
cp .env-example .env
```

Edit `.env` as needed to configure MySQL credentials and ports:

```env
MYSQL_ROOT_PASSWORD=rootpass
MYSQL_DATABASE=pharma_challenge_db
MYSQL_USER=admin
MYSQL_PASSWORD=admin
MYSQL_PORT=3307
```

---

### 3. Use the interactive project menu

Run the project using the helper script:

```bash
chmod +x menu.sh
./menu.sh
```

Inside the menu you can:
- Start the project (`docker compose up --build -d`)
- Stop it (`docker compose down`)
- Stop and remove containers/volumes (`docker compose down -v`)
- Check running containers (`docker ps`)

---

## 🧇 Notes

- The database will be initialized with the following:
  - `pharma_challenge_db` for the application
  - `pharma_challenge_test_db` for testing
- These are created by the SQL script at: `mysql/init/init.sql`
- Permissions are granted to the user specified in `.env`.

---

## ✅ Recommended Git Setup

- Main repository: [`pharma-challenge`](https://github.com/reynososergio/pharma-challenge)
- Backend: [`pharma-challenge-api`](https://github.com/reynososergio/pharma-challenge-api)
- Frontend: [`pharma-challenge-ui`](https://github.com/reynososergio/pharma-challenge-ui)

---

## 📌 License

This repository is part of a technical challenge. Company-specific details have been anonymized.  
You are free to use this structure for showcasing your skills or adapting it to similar use cases.

