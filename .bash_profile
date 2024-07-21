alias ll='ls -la'

alias k='kubectl'

alias g='git'

alias tnl='tmux new -s local'
alias ta='tmux a'
alias t='tmux'

alias d='docker'
alias dc='docker compose'

# 初回シェル時のみ実行する処理をかける
if [ $SHLVL = 1 ]; then
  tmux
fi
