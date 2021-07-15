export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias git-rebase='git fetch origin master && git rebase origin/master && git prune && rm .git/gc.log'
alias git-delete-merged='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'
alias git-delete-gone="git remote prune origin && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -D"
alias elasticreindex='bundle exec rake elasticsearch:reindex'

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/arthurgouveia/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/arthurgouveia/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
