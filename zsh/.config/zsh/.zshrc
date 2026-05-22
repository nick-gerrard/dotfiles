# Enable Powerlevel10k instant prompt. Must stay at the top.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/Applications/love.app/Contents/MacOS:$PATH"

if [[ "$OSTYPE" == "darwin"* ]]; then
  plugins=(git sudo)
else
  export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
  export PATH="$HOME/.scripts/lua:$PATH"
  eval $(luarocks path)
  plugins=(git sudo python)
fi

source $ZSH/oh-my-zsh.sh

# Tmux helpers
ta() { tmux attach-session -t "$(tmux list-sessions -F '#S' | fzf)" }
ts() { tmux switch-client -t "$(tmux list-sessions -F '#S' | fzf)" }
tn() { tmux new -s "$1" }
tl() { tmux list-sessions }

command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"

source $ZDOTDIR/.zsh_aliases

[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
