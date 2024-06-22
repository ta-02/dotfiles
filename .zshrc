# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
#
# # -- To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. -- 
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#

eval "$(starship init zsh)"

# -- Use FD instead of FZF--
export FZF_DEFAULT_COMMAND="fd  --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d  --strip-cwd-prefix --exclude .git"
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}

# -- Vi Binds -- 
bindkey -v

function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy -i
}
zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# -- Use fd (https://github.com/sharkdp/fd) for listing path candidates. --
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd  --exclude .git . "$1"
}

# -- Use fd to generate the list for directory completion -- 
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# -- history setup --
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# -- completion using arrow keys (based on history) --
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -- FZF --  
eval "$(fzf --zsh)"

# -- Nvim Alias --
alias n="nvim"

# -- Tmux Alias --
alias t="tmux"
alias tk="tmux kill-session -t"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"
alias tn="tmux new -s"

# -- Python Alias --
alias python="python3"
alias py="python3"
alias pip="pip3"

# ---- Eza (better ls) -----
alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

source ~/fzf-git.sh/fzf-git.sh
source "$HOME/.zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"
