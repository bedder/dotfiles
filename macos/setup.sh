set -e

echo "Checking 🍺 Homebrew..."
if [ -f "/opt/homebrew/bin/brew" ]; then
  echo "  └── ✅ Homebrew is already installed"
else
  echo "  └── ❌ Homebrew is not installed. See https://docs.brew.sh/Installation for instructions in how to get started"
  ERRORS="${ERRORS} brew"
fi

echo "Checking 🌻 zinit..."
if [ -z "${ZINIT_GIT}" ]; then
  echo "  └── ❌ ZINIT_GIT env var not set. Suggested value: '${HOME}/.local/share/zinit/'"
elif [ -d "${ZINIT_GIT}" ]; then
  echo "  └── ✅ zinit already exists"
else
  echo "  ├── 🌍 Cloning https://github.com/zdharma-continuum/zinit to ${ZINIT_GIT}"
  mkdir -p "${ZINIT_GIT}"
  cd "${ZINIT_GIT}"
  # For security, we want to only check out known good commits - this fetches release v3.14.0
  # using a known SHA
  git -c init.defaultbranch=main init > /dev/null
  git remote add origin https://github.com/zdharma-continuum/zinit.git
  git fetch --depth 1 origin 5c0c0454deeb9eac95e08ef214b5d7ba6859db14 --quiet
  git -c advice.detachedHead=false checkout --quiet FETCH_HEAD
  echo "  └── ✅ Done!"
fi

echo "Checking 🐍 pipx"
if [ -x "$(command -v pipx)" ]; then
  echo "  ├── ✅ pipx is already installed"
  if $(pipx ensurepath --quiet > /dev/null); then
    echo "  └── ✅ pipx path configured correctly"
  else
    echo "  └── ❌ pipx path not configured. Try running \`pipx ensurepath\` and following the instructions"
  fi
else
  # This is not a killer; we just want to check this in order to 
  echo "  └── ❌ pipx is not installed. Try running \`brew install pipx\`"
fi

echo "Checking ⚡️ uv"
if [ -x "$(command -v uv)" ]; then
  echo "  └── ✅ uv is already installed"
else
  echo "  └── ❌ uv is not installed. Try running \`pip install pipx\`"
  ERRORS="${ERRORS} uv"
fi

echo "Checking 🎩 diff-so-fancy"
if [ -x "$(command -v diff-so-fancy)" ]; then
  echo "  └── ✅ diff-so-fancy is already installed"
else
  echo "  └── ❌ diff-so-fancy is not installed. Try running \`brew install diff-so-fancy\`"
  ERRORS="${ERRORS} diff-so-fancy"
fi

echo "Checking 📦 stow"
if [ -x "$(command -v stow)" ]; then
  echo "  └── ✅ stow is already installed"
else
  echo "  └── ❌ stow is not installed. Try running \`brew install stow\`"
  ERRORS="${ERRORS} stow"
fi

if [[ ! -z ${ERRORS} ]]; then
  echo
  echo "Errors with the following packages:${ERRORS}"
  echo "Resolve these before continuing"
  exit 1
fi
