
function cleanTex () {
  find -E ${1:-'.'} -type f -iregex '.*\.(aux|fls|out|fdb_latexmk|log|synctex.gz|bbl|blg|pag)' -exec rm {} \;
}
