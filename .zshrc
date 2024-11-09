git_prompt_info() {
  local dirstatus=" OK"
  local dirty="%{$fg[red]%} X%{$reset_color%}"

  if [[ ! -z $(git status --porcelain 2> /dev/null | tail -n1) ]]; then
    dirstatus=$dirty
  fi

  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo " %{$fg[green]%}${ref#refs/heads/}$dirstatus%{$reset_color%}"
}

local dir_info_color="%F{white}"

local dir_info="%{$dir_info_color%}%(5~|%-1~/.../%2~|%4~)%{$reset_color%}"
local promptnormal="φ %{$reset_color%}"
local promptjobs="%{$fg[red]%}φ %{$reset_color%}"


setopt prompt_subst
PROMPT='${dir_info}$(git_prompt_info) %(1j.$promptjobs.$promptnormal)'

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey -v 
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

alias vim="nvim"
alias python="python3"
alias py="python3"
alias pip="pip3"
alias lg='lazygit'
alias ls="eza"
alias cd="z"
alias g++="g++ -std=c++23"
alias c++="c++ -std=c++23"

export FZF_DEFAULT_COMMAND="fd --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --strip-cwd-prefix --exclude .git"
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'" "$@" ;;
    ssh)          fzf --preview 'dig {}' "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

_fzf_compgen_path() {
  fd --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

function vi-yank-xclip {
    zle vi-yank
    echo "$CUTBUFFER" | pbcopy -i
}
zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

export PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "$HOME/.zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"
source ~/fzf-git.sh/fzf-git.sh

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export GOPATH=$(go env GOPATH)
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

[ -s "/Users/talal/.bun/_bun" ] && source "/Users/talal/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
