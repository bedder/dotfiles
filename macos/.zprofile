# Standard XDG locations
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_CACHE_HOME="${HOME}/.cache"

# zinit locations
export ZINIT_GIT="${XDG_DATA_HOME}/zinit"
export ZINIT_CONFIG="${XDG_CONFIG_HOME}/zinit_config.zsh"

# zsh
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export SHELL_SESSION_DIR="$XDG_STATE_HOME/zsh/sessions"
export SHELL_SESSION_FILE="$SHELL_SESSION_DIR/$TERM_SESSION_ID"
export ZSH_ALIASES="${XDG_CONFIG_HOME}/aliases.zsh"
export ZSH_CUSTOM_ALIASES="${XDG_CONFIG_HOME}/custom_aliases.zsh"

# p10k locations
export P10K_CONFIG="${XDG_CONFIG_HOME}/p10k/.p10k.zsh"
export P10K_PROMPT="${XDG_CONFIG_HOME}/p10k/prompt.zsh"
export P10K_INSTANT_PROMPT="${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"

# Misc
export KUBECONFIG="$XDG_CONFIG_HOME/kube"
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"
export MINIKUBE_HOME="$XDG_DATA_HOME"/minikube
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export PYTHON_HISTORY=$XDG_STATE_HOME/python_history

# PATH modifications
export PATH=${PATH}:${HOME}/.local/bin

[[ ! -f "${HOME}/.zprofile-custom" ]] || source "${HOME}/.zprofile-custom"
