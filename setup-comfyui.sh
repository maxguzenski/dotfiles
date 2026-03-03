#!/bin/bash

mise use python@3.13

pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm7.2

pip install -r requirements.txt
pip install -r manager_requirements.txt

python main.py --enable-manager
