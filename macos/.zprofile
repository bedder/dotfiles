# Standard XDG locations
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_CACHE_HOME="${HOME}/.cache"

# zinit locations
export ZINIT_GIT="${XDG_DATA_HOME}/zinit"
export ZINIT_CONFIG="${XDG_CONFIG_HOME}/zinit_config.zsh"

# p10k locations
export P10K_CONFIG="${XDG_CONFIG_HOME}/p10k/.p10k.zsh"
export P10K_PROMPT="${XDG_CONFIG_HOME}/p10k/prompt.zsh"
export P10K_INSTANT_PROMPT="${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"

# PATH modifications
export PATH=${PATH}:${HOME}/.local/bin
