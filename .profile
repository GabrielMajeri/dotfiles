# Set Android SDK home directory
export ANDROID_HOME="$HOME/.android/sdk"

# Add Rust to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Add .NET Core SDK tools to PATH
export PATH="$HOME/.dotnet/tools:$PATH"

# Move Gradle cache to the cache dir
export GRADLE_USER_HOME="$HOME/.cache/gradle"

# Move NVIDIA shader cache to the cache dir
export __GL_SHADER_DISK_CACHE_PATH="$HOME/.cache/nvidia"

# Load all settings from .bashrc
source ~/.bashrc
