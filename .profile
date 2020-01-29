# Ensure GTK applications use the KDE file picker
export GTK_USE_PORTAL=1

# Use Firefox as the default browser
export BROWSER=firefox-developer-edition

# Add Rust to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# If running bash
if [ -n "$BASH_VERSION" ]; then
    # Load all settings from .bashrc
    source ~/.bashrc
fi

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    #XDG_SESSION_TYPE=wayland dbus-run-session startplasma-wayland
    startx
fi
