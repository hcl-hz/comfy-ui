#!/bin/sh

# Change to the ComfyUI directory
cd ComfyUI

# Pull the latest changes from the repository
git pull

# Install required Python packages
pip install -r requirements.txt

# Upgrade pip
pip install --upgrade pip

# Change to the models/checkpoints directory
cd models/checkpoints

# Define the file URL and local filename
FILE_URL="https://huggingface.co/Comfy-Org/flux1-schnell/resolve/main/flux1-schnell-fp8.safetensors"
LOCAL_FILE="flux1-schnell-fp8.safetensors"

# Check if the file already exists
if [ ! -f "$LOCAL_FILE" ]; then
  echo "File not found. Downloading..."
  wget "$FILE_URL"
else
  echo "File already exists. No download needed."
fi
