# path, the 0 in the filename causes this to load first

# Append a path to $PATH only if it's not already there.
pathAppend() {
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

# Source a file if it exists.
sourceIfExists() {
  if test -r "$1" ; then
    source "$1" > /dev/null 2> /dev/null
  fi
}

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

# GO
export GOPATH="$HOME/gocode"

pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
pathAppend "$HOME/.cargo/bin"
pathAppend "$HOME/.jenv/bin"
pathAppend "$HOME/.local/bin"
pathAppend "$GOPATH/bin"

# jenv
if (( $+commands[jenv] )) then
  eval "$(jenv init -)"
fi

# OCaml
sourceIfExists "$HOME/.opam/opam-init/init.zsh"

# Nix
sourceIfExists "$HOME/.nix-profile/etc/profile.d/nix.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
sourceIfExists "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
sourceIfExists "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
