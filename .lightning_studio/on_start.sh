#!/bin/bash

# This script runs every time your Studio starts, from your home directory.

# List files under fast_load that need to load quickly on start (e.g. model checkpoints).
#
# ! fast_load
# ComfyUI/models/checkpoints/512-inpainting-ema.safetensors
# ComfyUI/models/checkpoints/illuminatiDiffusionV1_v11-unclip-h-fp16.safetensors
# ComfyUI/models/checkpoints/sd_xl_base_1.0.safetensors
# ComfyUI/models/checkpoints/sd_xl_refiner_1.0.safetensors
# ComfyUI/models/checkpoints/v1-5-pruned-emaonly.ckpt
# ComfyUI/models/checkpoints/v2-1_512-ema-pruned.safetensors
# ComfyUI/models/checkpoints/v2-1_768-ema-pruned.safetensors
# ComfyUI/models/checkpoints/wd-1-5-beta2-aesthetic-unclip-h-fp16.safetensors
# ComfyUI/models/controlnet/control_v11p_sd15_inpaint_fp16.safetensors
# ComfyUI/models/controlnet/control_v11f1p_sd15_depth_fp16.safetensors
# ComfyUI/models/vae/vae-ft-mse-840000-ema-pruned.safetensors
# ComfyUI/custom_nodes/comfy_controlnet_preprocessors/

# Startup command.
./start.sh
