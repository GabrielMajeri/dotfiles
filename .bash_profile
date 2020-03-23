# Ensure GTK applications use the KDE file picker
export GTK_USE_PORTAL=1

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

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    #XDG_SESSION_TYPE=wayland dbus-run-session startplasma-wayland
    startx > "$HOME/.local/share/xorg/stdout" 2> "$HOME/.local/share/xorg/stderr"
fi
