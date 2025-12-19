# Enable `powerlevel10k` instant prompt - this allows you to interact with shell sessions
# while plugins are still loading

# Expose Homebrew env vars

[[ ! -f "/opt/homebrew/bin/brew" ]] || eval "$(/opt/homebrew/bin/brew shellenv)"
if [[ -f "${ZINIT_GIT}/zinit.zsh" ]]; then
  source "${ZINIT_GIT}/zinit.zsh"
  source "${ZINIT_CONFIG}"
else
  echo "🔥 zinit not found! Many terminal extensions will not be working 🔥"
fi
[[ ! -f "${P10K_INSTANT_PROMPT}" ]] || source ${P10K_INSTANT_PROMPT}
source "${P10K_CONFIG}"
source "${P10K_PROMPT}"
source "${ZSH_ALIASES}"
