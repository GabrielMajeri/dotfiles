# Set up environment variables

# Enable fcitx for multi-language keyboard input
if [ -x "$(command -v fcitx)" ]; then
    export GTK_IM_MODULE='fcitx'
    export QT_IM_MODULE='fcitx'
    export XMODIFIERS='@im=fcitx'
fi

# Set Go workspace directory
export GOPATH="$HOME/Development/Go"

# Add Rust to PATH
export PATH="$HOME/.cargo/bin:$PATH"
# Add Android SDK's tools to PATH
export PATH="/opt/android-sdk/platform-tools:$PATH"
# Add Go executables to path
export PATH="$PATH:$GOPATH/bin"

# Load all settings from .bashrc
source ~/.bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
