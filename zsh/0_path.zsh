# path, the 0 in the filename causes this to load first

# GO
export GOPATH="$HOME/gocode"

path=(
  $path
  $HOME/.yadr/bin
  $HOME/.yadr/bin/yadr
  $HOME/.cargo/bin
  $HOME/.local/bin
  $GOPATH/bin
)

# OCaml
(( $+commands[opam] )) && eval $(opam config env)

