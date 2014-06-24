export PATH="/usr/local/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR="vim"

if [ -f ~/.local_profile ]; then
  source ~/.local_profile
fi
