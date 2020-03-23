# Use Chromium as the default browser
export BROWSER=chromium

# Add Rust to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Move Gradle cache to the cache dir
export GRADLE_USER_HOME="$HOME/.cache/gradle"

# Move NVIDIA shader cache to the cache dir
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia"

# Load all settings from .bashrc
source ~/.bashrc
