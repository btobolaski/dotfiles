if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.local_profile ]; then
  source ~/.local_profile
fi
