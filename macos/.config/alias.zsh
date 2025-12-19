# Common git aliases
alias ga="git add"
alias gap="git add --patch"
alias gc="git commit"
alias gs="git status --short"
alias gd="git diff --output-indicator-new=' ' --output-indicator-old=' ' --color=always | diff-so-fancy""

# Less but keeping colours
alias cless="less -R"

# Better diffing
cdiff() {
  diff -r -u $@ | diff-so-fancy
}
