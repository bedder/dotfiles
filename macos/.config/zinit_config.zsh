zinit ice depth=1 proto=ssh; zinit light romkatv/powerlevel10k
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-syntax-higlighting
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-syntax-completions
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-syntax-autosuggestions

zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit
zinit cdreplay -q
