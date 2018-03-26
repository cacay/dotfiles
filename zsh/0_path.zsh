# path, the 0 in the filename causes this to load first
pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

# GO
export GOPATH="$HOME/gocode"

pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
pathAppend "$HOME/.cargo/bin"
pathAppend "$HOME/.local/bin"
pathAppend "$GOPATH/bin"

# OCaml
(( $+commands[opam] )) && eval $(opam config env)
