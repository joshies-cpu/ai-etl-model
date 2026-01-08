# 🧠 Hybrid RAG Knowledge Assistant

A professional-grade **Retrieval-Augmented Generation (RAG)** platform designed for autonomous systems and healthcare applications. This assistant bridges clinical documentation with technical support using a local LLM, offering privacy-first, context-aware answers.

## 🚀 Key Features

*   **📄 Dynamic PDF Indexing**: Instantly learns from uploaded technical manuals, medical schedules, or research papers.
*   **📍 Page-Aware Citations**: Provides precise source attribution (Filename & Page Number) for every claim, ensuring data integrity.
*   **🔍 Hybrid Search Logic**:
    *   **Technical Mode**: High-relevance matches trigger strict document grounding.
    *   **General Mode**: Low-relevance matches fallback to the LLM's general knowledge base.
*   **🗣️ Voice-Enabled UI**: Built-in speech-to-text and manual read-aloud features for accessibility.
*   **🐳 Dockerized Deployment**: Fully containerized for consistent deployment across environments.

## 📂 Project Structure

This project follows a modular architecture:

```text
├── app/                  # Core Application Logic
│   ├── main.py           # FastAPI entry point & API routes
│   └── etl.py            # PDF extraction, cleaning, and chunking pipeline
├── scripts/              # Utility Scripts
│   ├── debug_search.py   # Test vector database retrieval
│   ├── run.sh            # One-click start script
│   └── start_server.sh   # Server launcher
├── static/               # Frontend Assets
│   └── index.html        # Web interface
├── data/                 # PDF Storage (Volume mapped)
├── chrome_db/            # Vector Database Storage
├── Dockerfile            # Container definition
└── docker-compose.yaml   # Orchestration config
```

## 🛠️ Tech Stack

*   **Backend**: Python 3.10+, FastAPI
*   **AI Engine**: [Ollama](https://ollama.com/) (Llama 3)
*   **Vector Querying**: [ChromaDB](https://www.trychroma.com/)
*   **ETL Pipeline**: `pdfminer.six`

## 📥 Getting Started

### Prerequisites
1.  **Ollama**: Install and pull the model:
    ```bash
    ollama run llama3
    ```
2.  **Docker** (Optional, for containerized run).

### Option A: Run with Docker (Recommended)
The easiest way to get started.

```bash
docker compose up --build
```
Access the UI at: `http://localhost:8000`

### Option B: Run Locally
1.  **Create a Virtual Environment**:
    ```bash
    python3 -m venv venv
    source venv/bin/activate
    ```
2.  **Install Dependencies**:
    ```bash
    pip install -r requirements.txt
    ```
3.  **Start the Server**:
    ```bash
    ./scripts/start_server.sh
    # Or manually:
    # uvicorn app.main:app --reload
    ```

## 🔌 API Endpoints

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/` | Serves the Chat UI |
| `POST` | `/upload` | Upload a PDF file for indexing |
| `POST` | `/ask` | Query the assistant (JSON body: `{"query": "..."}`) |
| `DELETE` | `/reset` | Clear database and processed files |

## 🔧 Roadmap: Hardware Integration
Designed for future integration with **ROS2** autonomous wheelchairs:
*   Live Battery & Sensor Status (via ESP32)
*   Navigation Diagnostics
*   Proactive Medical Alerts
