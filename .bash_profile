# Set up environment variables
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

# Add Rust to PATH
export PATH="$HOME/.cargo/bin:$PATH"
# Add Android SDK's tools to PATH
export PATH="/opt/android-sdk/platform-tools:$PATH"

# Load all settings from .bashrc
source ~/.bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
