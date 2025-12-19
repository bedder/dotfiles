# zinit extensions
zinit ice depth=1 proto=ssh; zinit light romkatv/powerlevel10k              # Base theme
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-syntax-highlighting  # Syntax highlighting
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-completions          # Additional completions
zinit ice depth=1 proto=ssh; zinit light zsh-users/zsh-autosuggestions      # Additional suggestions

# oh-my-zsh basic plugins
zinit snippet OMZL::git.zsh            # Base git support
zinit snippet OMZP::command-not-found  # Hint towards solutions to issues

# oh-my-zsh application specific plugins
if [ -x "$(command -v kubectl)" ]; then
    zinit snippet OMZP::kubectl  # Adds kubectl autocompletion
    zinit snippet OMZP::kubectx  # Allows k8s context in prompts
fi
if [ -x "$(command -v poetry)" ]; then
    zinit snippet OMZP::poetry   # Adds poetry autocompletion
fi
if [ -x "$(command -v uv)" ]; then
    zinit snippet OMZP::uv       # Adds uv autocompletion
fi

# Load completions
autoload -Uz compinit && compinit && zinit cdreplay -q

# Allow word deletion to be path aware
autoload -U select-word-style && select-word-style bash
