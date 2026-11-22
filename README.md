# 🌱 SurplusLink AI — Intelligent Surplus Food Rescue Network

<p align="center">

  **Turning Food Waste into Food Access with AI**

  An AI-powered platform connecting food donors, NGOs, and volunteers to reduce food waste and fight hunger through intelligent food redistribution.

  **Live Website:** https://surplus-link-ai.vercel.app/

</p>

---

## 📌 Overview

Every day, large quantities of perfectly edible food go to waste while millions of people struggle with food insecurity.

**SurplusLink AI** is an intelligent surplus food rescue platform designed to bridge this gap.

The platform connects restaurants, hotels, grocery stores, businesses, and individual food donors with NGOs and volunteers who can collect and distribute surplus food to people in need.

By leveraging Artificial Intelligence, intelligent matching, and real-time coordination, SurplusLink AI aims to make food redistribution faster, smarter, and more accessible.

Our mission is simple:

**Save Food. Feed People. Build a Sustainable Future.**

---

## 🚨 Problem Statement

Food waste and food insecurity are two interconnected global challenges.

- Restaurants, hotels, supermarkets, and other establishments generate significant quantities of surplus food.
- Many NGOs and charitable organizations struggle to identify nearby sources of available food.
- Food donors and NGOs often lack an efficient platform for coordination.
- Delays in communication can result in edible food becoming unusable.
- Manual food redistribution makes tracking donations and measuring impact difficult.

Existing food donation processes often lack intelligent coordination and automation.

### 💡 Our Solution

SurplusLink AI provides a centralized, AI-powered food rescue ecosystem where:

1. Donors can list surplus food with relevant details.
2. AI helps process and organize food information.
3. NGOs can discover suitable food donations.
4. Intelligent matching helps connect available food with organizations that need it.
5. Volunteers can coordinate food collection and delivery.
6. Donation statuses can be tracked throughout the rescue process.

---

## ✨ Key Features

### 🤖 1. AI-Powered Food Intelligence
- AI-assisted food information processing.
- Intelligent extraction and organization of food details.
- AI-powered assistance for improving the donation workflow.
- Designed to reduce manual work for donors and receiving organizations.

### 🔗 2. Intelligent Donor–NGO Matching
- Connects food donors with NGOs.
- Helps identify relevant donation opportunities.
- Considers relevant donation and organization information when matching.
- Makes surplus food discovery more efficient.

### 🍱 3. Food Donation Management
- Create and manage food donation listings.
- Provide information about available food.
- Track donation progress.
- Improve visibility of available surplus food.

### 🏢 4. NGO Management
- Discover available food donations.
- Find suitable donation opportunities.
- Coordinate food collection.
- Manage donation-related activities.

### 🚚 5. Volunteer Coordination
- Support food pickup and delivery coordination.
- Connect volunteers with donation activities.
- Help streamline the food redistribution process.

### 📊 6. Impact and Sustainability
- Encourage responsible food redistribution.
- Help reduce avoidable food waste.
- Support communities experiencing food insecurity.
- Provide a foundation for measuring food rescue impact.

---

## 🛠️ Technology Stack

| Component | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript / project frontend framework |
| Backend | Python, FastAPI |
| Database | PostgreSQL |
| Database Hosting | Neon |
| Frontend Hosting | Vercel |
| AI Integration | Groq API |
| AI Model | Configurable LLM |
| API Communication | REST API |
| Version Control | Git & GitHub |

*The technology descriptions should be aligned with the actual dependencies and implementation in the repository.*

---

## 🏗️ System Architecture

```text
                 ┌──────────────────────┐
                 │       USERS          │
                 │                      │
                 │  Donors / NGOs       │
                 │  Volunteers          │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │      FRONTEND       │
                 │                      │
                 │       Vercel         │
                 └──────────┬───────────┘
                            │
                       REST API
                            │
                            ▼
                 ┌──────────────────────┐
                 │       BACKEND       │
                 │                      │
                 │       FastAPI        │
                 │                      │
                 │  Business Logic     │
                 │  Authentication     │
                 │  Donation Management│
                 │  Matching Logic     │
                 └──────┬───────┬───────┘
                        │       │
                ┌───────▼──┐ ┌──▼──────────┐
                │   Neon   │ │  Groq API   │
                │          │ │             │
                │PostgreSQL│ │AI Processing│
                └──────────┘ └─────────────┘
```

---

## 🔄 How SurplusLink AI Works

**Step 1 — Food Donation**

A donor registers and submits a surplus food listing with relevant information such as food name, quantity, location, and availability.

**Step 2 — AI Processing**

The AI integration assists in processing food-related information and supporting intelligent workflows.

**Step 3 — Intelligent Matching**

The platform helps identify NGOs that may be suitable for the available donation.

**Step 4 — Donation Acceptance**

An NGO discovers and accepts a suitable donation opportunity.

**Step 5 — Volunteer Coordination**

Volunteers can participate in coordinating the collection and transportation of food.

**Step 6 — Food Redistribution**

The surplus food reaches the intended beneficiaries, helping reduce waste and improve food accessibility.

---

## 📂 Project Structure

The following is a conceptual structure. Adjust folder names to match the actual repository.

```text
SurplusLink-AI/
│
├── frontend/
│   ├── public/
│   ├── src/
│   ├── components/
│   ├── pages/
│   └── package.json
│
├── backend/
│   ├── app/
│   │   ├── main.py
│   │   ├── routes/
│   │   ├── models/
│   │   ├── services/
│   │   ├── database/
│   │   └── utils/
│   │
│   ├── requirements.txt
│   ├── .env.example
│   └── README.md
│
├── .gitignore
└── README.md
```

---

## ⚙️ Installation and Setup

Follow these instructions to run the project locally.

### Prerequisites

Make sure you have installed:

- Python 3.10+
- Node.js and npm
- Git
- PostgreSQL-compatible database (Neon can be used)
- Groq API key

### 1. Clone the Repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd SurplusLink-AI
```

### 2. Backend Setup

Navigate to the backend directory:

```bash
cd backend
```

Create a virtual environment:

```bash
python -m venv .venv
```

Activate it on Windows:

```powershell
.venv\Scripts\activate
```

Install dependencies:

```bash
pip install -r requirements.txt
```

### 3. Environment Configuration

Create a `.env` file inside the backend directory.

Example:

```env
DATABASE_URL=your_neon_database_url

GROQ_API_KEY=your_groq_api_key

SECRET_KEY=your_secret_key

FRONTEND_URL=http://localhost:3000

```

Use the actual environment variable names expected by your backend configuration.

**Important:** Never commit your `.env` file, database credentials, API keys, or secret keys to GitHub.

### 4. Start the Backend

Run:

```bash
uvicorn app.main:app --reload
```

Backend development server:

```text
http://127.0.0.1:8000
```

FastAPI interactive API documentation:

```text
http://127.0.0.1:8000/docs
```

### 5. Frontend Setup

Open another terminal and navigate to your frontend directory:

```bash
cd frontend
```

Install dependencies:

```bash
npm install
```

Configure the frontend API base URL to point to your local backend.

Start the development server using the appropriate command for your frontend framework:

```bash
npm run dev
```

The frontend will be available at the local URL displayed in your terminal.

---

## 🌐 Deployment

SurplusLink AI uses a cloud-based deployment architecture.

| Service | Platform |
|---|---|
| Frontend | Vercel |
| Backend | FastAPI deployment service |
| Database | Neon PostgreSQL |
| AI Services | Groq API |

### Deployment Configuration

**Frontend — Vercel**
- Connect the frontend GitHub repository.
- Configure the build settings.
- Set the production backend API URL.
- Deploy the application.

**Backend — FastAPI**
- Deploy the backend to a Python-compatible hosting service.
- Configure environment variables.
- Set up the Neon PostgreSQL connection.
- Configure CORS to allow the production frontend domain.
- Verify the API endpoints.

**Database — Neon**
- Create a PostgreSQL database.
- Configure the database connection string.
- Apply the project schema and migrations.
- Verify backend database connectivity.

**Live Application:** https://surplus-link-ai.vercel.app/

---

## 🔐 Security Considerations

SurplusLink AI follows important security practices:

- Environment variables for sensitive credentials.
- Secure handling of database connection strings.
- Backend-side validation of incoming requests.
- CORS configuration for authorized frontend origins.
- API-based communication between frontend and backend.
- Protection of sensitive credentials from public repositories.

---

## 🌍 Social Impact

SurplusLink AI is built around three major objectives:

| Objective | Expected Impact |
|---|---|
| Reduce Food Waste | Rescue edible surplus food |
| Fight Hunger | Improve access to available food |
| Build Sustainability | Encourage responsible food redistribution |

We believe technology can make food donation more accessible, efficient, and impactful.

---

## 🚀 Future Enhancements

Our vision is to continuously improve SurplusLink AI through:

- AI-based food freshness and expiry estimation.
- Geolocation-based donation matching.
- Smart pickup route optimization.
- Real-time notifications.
- QR-based donation verification.
- Advanced analytics and impact reporting.
- Multilingual AI assistance.
- Mobile application for donors, NGOs, and volunteers.
- Improved food safety and donation eligibility checks.

*These are planned enhancements and should not be interpreted as currently implemented functionality.*

---

## 👥 Team

**SurplusLink AI Development Team**

Built collaboratively with the goal of using artificial intelligence to solve real-world food waste and food insecurity challenges.

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

1. Fork the repository.
2. Create a feature branch.
3. Commit your changes.
4. Push your branch.
5. Submit a pull request.

---

## 📜 License

This project is developed for educational, innovation, and social-impact purposes.

Add an appropriate open-source license, such as the MIT License, if you intend to distribute the project under those terms.

---

## ❤️ Our Vision

We envision a world where no edible food goes to waste while people go hungry.

**SurplusLink AI — Connecting Surplus Food to Those Who Need It.**

🌱 *Save Food. Share Hope. Sustain Tomorrow.*
