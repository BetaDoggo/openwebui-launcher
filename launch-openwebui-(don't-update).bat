@echo off

pip install uv

if not exist ".venv" (
    uv venv --python 3.11
) else (
    echo .venv folder already exists, skipping venv creation
)

call .venv\Scripts\activate

uv pip install open-webui

open-webui serve
Pause