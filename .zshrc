# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# -- To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. -- 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -- Use FD instead of FZF--
export FZF_DEFAULT_COMMAND="fd  --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d  --strip-cwd-prefix --exclude .git"

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
