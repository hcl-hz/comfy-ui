#!/bin/sh

nvidia_library_path="/usr/lib/x86_64-linux-gnu/libcuda.so"
comfyui_directory="/teamspace/studios/this_studio/ComfyUI"

# Base Python command
python_command="python main.py --dont-print-server --port 8009 --listen"

if [ -f "$nvidia_library_path" ]; then
    echo "GPU detected"
    # Add optional GPU arguments here.
else
    echo "No GPU detected, using CPU"
    # Add optional CPU arguments here.
    python_command="$python_command --cpu"
fi

# Launch command
cd "$comfyui_directory" && \
$python_command
