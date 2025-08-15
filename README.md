# Chatbot PDF Project Installation Guide

## Prerequisites

- Python 3.8 or newer installed
- (Optional) [Git](https://git-scm.com/) for cloning the repository

---

## Installation Using Executable

### Linux/macOS

1. **Download the project as zip and extract it.**

2. **In the project root run the setup script:**

```bash
chmod +x start.sh
./start.sh
```

- The script will create a virtual environment if it doesn't exist, install dependencies if they are not installed, prompt for your API key if missing, and launch the app.

---

## Manual Installation (All Platforms)

1. **Clone or download the repository:**
   ```bash
   git clone https://github.com/aardapeker/chatbot.git
   cd chatbot
   ```
2. **Create and activate a virtual environment:**

   - **Linux/macOS:**
     1. **Create:**
        ```bash
        python3 -m venv .venv
        ```
     2. **Activate:**
        ```bash
        source ./.venv/bin/activate
        ```
   - **Windows:**
     1. **Create:**
        ```bat
        python -m venv .venv
        ```
     2. **Activate:**
        ```bat
        .venv\Scripts\activate
        ```

3. **Install dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

4. **Set your OpenAI API key:**

   - Create a `.env` file in the project folder and add:
     ```
     OPENAI_API_KEY=your_api_key_here
     ```

5. **Run the app:**
   ```bash
   streamlit run app.py
   ```
