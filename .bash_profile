# Activate py310 virtual environment.
source ~/py311/bin/activate

# Color-code prompt.
source ~/.bash_prompt

# Make gnu screen show more useful information.
export SCREENDIR=$HOME/.screen

# Enable WSL Graphics & Auido (redundant)
export WSL2_GUI_APPS_ENABLED=1
export DISPLAY=:0
export XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir
export WAYLAND_DISPLAY=wayland-0
export PULSE_SERVER=/mnt/wslg/pulseserver

# For OpenAI
export OPENAI_API_KEY=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

cd ~/repos

echo "Visit http://localhost:8888 for JupyterLab, or to see where it's running, type: screen -ls"
