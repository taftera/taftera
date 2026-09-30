## Terminal
# Load Zsh version control info module
autoload -Uz vcs_info
precmd() { vcs_info }
# Enable detection of unstaged and staged changes
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
# Format status symbols
zstyle ':vcs_info:git:*' unstagedstr '%F{red}×%f'
zstyle ':vcs_info:git:*' stagedstr '%F{green}×%f'
# Forces the closing bracket to stay yellow:
zstyle ':vcs_info:git:*' formats ' [%b%u%c%F{yellow}]'
# Enable command substitution in PROMPT
setopt PROMPT_SUBST
# Set prompt: Folder in Cyan, Git Branch in Yellow
PROMPT='%F{cyan}%1~%f%F{yellow}${vcs_info_msg_0_}%f: '

## Autocomplete
# Enable built-in completion system
autoload -Uz compinit
compinit
# Case-insensitive tab completion (typing 'sour' matches 'source')
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Enable Zsh default key bindings (restores normal Left/Right cursor movement)
bindkey -e
# UP / DOWN: Search command history matching what you typed so far
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
# LEFT / RIGHT: Standard cursor movement left and right across your command
#bindkey '^[[D' backward-char
#bindkey '^[[C' forward-char

## Alias
alias mrb="cd ~/Documents/beast"

## Syntax Highlight
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
