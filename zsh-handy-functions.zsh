# Some handy functions for zsh

# Recursively find files by name
function rf() {
    if command -v rg >/dev/null 2>&1; then
        rg --hidden -l --files --iglob "*$1*"
    else
        find . -iname "*$1*"
    fi
}
# Swap content between two files
function swap() {
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}
# Short manual or TLDR
function sman() {
    curl cheat.sh/$1
}
