alias dk="docker kill $(docker ps -q) 2>/dev/null"

### LSD ###
alias ls='lsd'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

### Python ###
alias python="python3"

### VIM ###
alias vim="nvim"
alias vi="vim"

### Kubernetes ###
alias helm="kubesafe helm"
alias kubectl="kubesafe kubecolor"
alias k="kubectl"
alias kube-cleanup-pr='kubectl config get-contexts -o name | grep "_pr[0-9]" | xargs -I {} kubectl config delete-context {}'

### Terraform ###
alias tf="terraform"
