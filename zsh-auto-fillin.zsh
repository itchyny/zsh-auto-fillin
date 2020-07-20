#!/usr/bin/env zsh

_auto-fillin() {
  if [[ "$BUFFER" == *{{[a-z]*}}* ]] && [[ "$BUFFER" != *fillin* ]]; then
    if [[ "$BUFFER" == *'$('* ]]; then
      BUFFER="fillin '${BUFFER}'"
    else
      BUFFER="fillin ${BUFFER}"
    fi
  fi
  zle .accept-line
}

zle -N accept-line _auto-fillin
