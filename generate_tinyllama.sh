#!/bin/bash

# Prompt to generate
PROMPT="Write a dystopian short story about a startup that monitors your soul and ranks your moral purity. Make it poetic and eerie."

# Generate output
OUTPUT=$(echo "$PROMPT" | ollama run tinyllama)

# Save file with timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FILENAME="scripts/tinyllama_${TIMESTAMP}.md"

# Save output to file
echo "$OUTPUT" > "$FILENAME"

# Push to GitHub
git add "$FILENAME"
git commit -m "TinyLLaMA: new short $TIMESTAMP"
git push origin main

