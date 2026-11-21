# SurplusLink AI — Production-Grade Frontend Architecture

An advanced, responsive, real-time surplus food rescue web application built with **React 18**, **Vite**, **TypeScript**, **Tailwind CSS**, and **Framer Motion**. Architected to seamlessly connect to the **SurplusLink AI backend** (`https://github.com/Jaskarancode-x/SURPLUS-LINK-AI`), featuring a **3-Tier AI food extraction engine**, **multi-criteria automated matching**, **interactive volunteer logistics**, and **real-time live impact analytics**.

---

## 🌟 Key Architecture & Highlights

### 1. 3-Tier AI Extraction Integration
- **Direct Backend Hook**: Connects to Flask `POST /api/ai/extract` (powered by Google Gemini `gemini-3.1-flash-lite`, OpenAI `gpt-4o-mini`, and xAI `grok-2-latest`).
- **Smart Mock Fallback Engine**: If the backend is offline or `VITE_USE_MOCK_DATA=true`, the client automatically runs an in-browser heuristic NLP regex parser that extracts item titles, categories, quantities, deadlines, and pickup locations.
- **Safety First**: Implements `requires_confirmation: true` — AI-extracted food listings are never blindly auto-saved; missing fields are highlighted in amber for donor verification before broadcasting.

### 2. Multi-Criteria AI Matching Engine
- Dynamically scores food offers ($0 - 100$) for recipient NGOs using a 4-factor algorithm:
  - **Proximity Weight (38%)**: Distance-based scaling with transit ETA calculations.
  - **Capacity Fit Weight (22%)**: Evaluates batch volume against recipient warehouse thresholds.
  - **Deadline Urgency Weight (25%)**: Prioritizes offers with tighter collection windows.
  - **Dietary Specialty Weight (15%)**: Bonus scoring for matching category preferences (`Cooked Meals`, `Bakery`, `Fresh Produce`).
- Includes interactive perspective switching between **Roti Bank Foundation**, **Sewa Community Kitchen**, and **Annapurna Shelter Home**.

### 3. Volunteer Transit & Secure 6-Digit Handover
- Animated logistics pipeline with interactive scooter animations and real-time status transitions (`open` → `accepted` → `transit` → `collected`).
- Single-use 6-digit PIN verification system with a live 15-minute countdown timer.
- Handover Desk verification: NGOs enter the code on arrival; consumed or mismatched codes are instantly rejected, ensuring end-to-end chain-of-custody tracking.

### 4. Live Impact Analytics & Multi-Tab Sync
- Powered by **Recharts**:
  - Interactive cumulative rescued food timeline (AreaChart).
  - Partner intake vs capacity comparisons (BarChart).
  - Dietary category distribution breakdown (Donut / PieChart).
- Synchronized across multiple browser tabs and mobile devices using `BroadcastChannel` and `StorageEvent` APIs.
- Dynamic environmental metrics: $1 \text{ kg food rescued} \approx 2.5 \text{ meals shared} \approx 2.5 \text{ kg } \mathrm{CO}_2 \text{ avoided}$.

---

## 🛠 Tech Stack

| Layer | Technologies |
|---|---|
| **Framework & Tooling** | React 18, Vite 6, TypeScript (Strict Mode) |
| **Styling & Tokens** | Tailwind CSS with custom CSS variables for light/dark themes |
| **Animation & Micro-interactions** | Framer Motion, Canvas Confetti |
| **Data Visualization & Icons** | Recharts, Lucide React |
| **State & Data Fetching** | TanStack Query (`@tanstack/react-query`), Axios |
| **Real-time Sync** | BroadcastChannel API, Storage Events, WebSockets/Serverpod-ready |

---

## 🚀 Quick Start Guide

### 1. Prerequisites
- **Node.js**: v18.0.0 or later (v24+ recommended)
- **npm**: v9.0.0 or later

### 2. Install Dependencies
```bash
cd frontend
npm install
```

### 3. Environment Configuration
Copy `.env.example` to `.env`:
```bash
copy .env.example .env
```

| Variable | Default | Description |
|---|---|---|
| `VITE_API_BASE_URL` | `http://127.0.0.1:5000` | Points to the SurplusLink AI Flask / Serverpod backend |
| `VITE_USE_MOCK_DATA` | `true` | When `true`, enables offline smart mock fallback simulation |
| `VITE_MOCK_DELAY_MS` | `500` | Simulated AI inference delay for testing loading states |
| `VITE_DEFAULT_JOIN_CODE` | `RESCUE-7QK2` | Default session code for live multi-party coordination |

### 4. Run Development Server
```bash
npm run dev
```
Open [http://127.0.0.1:3000](http://127.0.0.1:3000) in your browser.

### 5. Type-Check and Production Build
```bash
# Verify TypeScript strict type-checking
npx tsc --noEmit

# Compile production bundle
npm run build
```

---

## 🔌 Connecting to the Live Python Backend

To connect the frontend to the live Python AI extraction server in `../Surplus_link AIversion2`:

1. **Start the Flask Backend Server**:
   ```bash
   cd "..\Surplus_link AIversion2"
   python app.py
   ```
   The backend will start on `http://127.0.0.1:5000`.

2. **Configure Frontend `.env`**:
   Update `frontend/.env`:
   ```ini
   VITE_API_BASE_URL=http://127.0.0.1:5000
   VITE_USE_MOCK_DATA=false
   ```

3. **Verify Connection**:
   - The green `API LIVE` indicator in the navbar will illuminate.
   - When you click **"Extract details with AI"** in the Donate tab, requests route directly to `http://127.0.0.1:5000/api/ai/extract` using Google Gemini or Grok.
   - If the backend is temporarily stopped, the frontend seamlessly degrades to the Tier-3 offline parser with zero user disruption.

---

## 📂 Project Directory Structure

```
frontend/
├── src/
│   ├── types/               # TypeScript interfaces mirroring backend schemas
│   │   └── index.ts
│   ├── services/            # API client, matching engine, sync, mock data
│   │   ├── api.ts           # Centralized Axios client + mock fallback
│   │   ├── matchingEngine.ts# Multi-criteria scoring & ranking algorithms
│   │   ├── syncService.ts   # Cross-tab BroadcastChannel synchronizer
│   │   └── mockData.ts      # Seeded listings, NGOs, and taxonomy
│   ├── context/             # Global application state & theme providers
│   │   ├── RescueContext.tsx# Listings, active NGO, transit, code verification
│   │   ├── ThemeContext.tsx # Dark/Light theme manager with persistence
│   │   └── ToastContext.tsx # Toast alerts and confetti triggers
│   ├── components/
│   │   ├── common/          # Navbar, MobileDock, GlassCard, Badges, Skeleton
│   │   ├── donate/          # DonorForm, AIReviewCard, ActiveListings
│   │   ├── ngo/             # NgoSelector, NgoOfferCard, HandoverDesk
│   │   ├── volunteer/       # PickupQueue, TransitLane, HandoverCodeBox
│   │   ├── impact/          # ImpactMetrics, GoalRing, ImpactCharts, LiveFeed
│   │   └── session/         # LiveSessionModal with QR/Join code
│   ├── pages/               # Top-level view modules (Home, Donate, NGOs, etc.)
│   ├── styles/              # Global styles, Tailwind directives, glass tokens
│   ├── App.tsx              # Main application shell and tab manager
│   └── main.tsx             # React DOM root and React Query client
├── FRONTEND_SPEC.md         # Full architectural audit and backend API spec
├── package.json
├── tailwind.config.js
├── vite.config.ts
└── tsconfig.json
```

---

## 🏆 User Flows Demo Walkthrough

1. **Donor Flow**:
   - Navigate to `#donate`.
   - Select the demo prompt: `"30 kg rice and dal, pickup before 6 PM from MG Road"`.
   - Click **"Extract details with AI"**.
   - Notice the AI extraction preview flagging `pickup_location` or validating fields.
   - Click **"Post to Rescue Network"** (confetti burst confirms publication).

2. **NGO Matching Flow**:
   - Navigate to `#ngos`.
   - Notice the AI Compatibility Score (e.g., $94/100$) and multi-criteria tags.
   - Switch between **Roti Bank**, **Sewa Kitchen**, and **Annapurna** to see how capacity and diet preferences dynamically change the ranking.
   - Click **"Accept Donation"**.

3. **Volunteer Logistics Flow**:
   - Navigate to `#volunteer`.
   - Click **"Start Pickup & Generate Handover Code"**.
   - Watch the animated scooter rider transition to midway transit.
   - An ephemeral 6-digit code (e.g. `849201`) is generated with a 15-minute countdown.

4. **Handover Desk Verification**:
   - Switch back to `#ngos` or click **"Simulate Arriving at NGO Handover Desk"**.
   - Enter the 6-digit code in the Handover Verification Desk PIN box.
   - Click **"Verify Handover"** to complete chain of custody. Edible food is officially saved and tallied.

5. **Live Impact Analytics**:
   - Navigate to `#impact` to view updated cumulative rescued kilograms, shared meals counter, $\text{CO}_2$ emissions avoided, and real-time Recharts visualizations.
