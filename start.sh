#!/bin/bash

# Step 1: Create virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

# Step 2: Activate the environment
source ./.venv/bin/activate

# Step 3: Install requirements
pip install -r requirements.txt

# Step 4: Ensure .env exists and check for API key
touch .env
if ! grep -q "OPENAI_API_KEY=" .env; then
  echo "OPENAI_API_KEY not found in .env."
  read -s -p "Please enter your OpenAI API Key: " api_key
  echo
  echo "OPENAI_API_KEY=$api_key" >> .env
  echo "API Key saved to .env."
fi

# Step 5: Run Streamlit app
streamlit run app.py