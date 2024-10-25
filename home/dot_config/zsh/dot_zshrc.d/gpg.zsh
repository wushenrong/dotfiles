if [[ -n "$TTY" ]]; then
  export GPG_TTY=$TTY
else
  export GPG_TTY=$(tty)
fi
