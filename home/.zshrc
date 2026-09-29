export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export JAVA_HOME=$(/usr/libexec/java_home -v 17)
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
export PATH="$PATH:/Users/sage/.dotnet/tools"
autoload -Uz compinit && compinit


# Added by Antigravity CLI installer
export PATH="/Users/sage/.local/bin:$PATH"
export PATH="/Users/sage/.local/bin:$PATH"


# Machine-local settings & secrets (not tracked)
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
