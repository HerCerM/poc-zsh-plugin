# Goals:
# - This script can only be sourced once.
# - 'AWKPATH' is updated to contain the directory of the Gawk library 'pzp.gawk'.
# - The 'pzp_length' function works; it should print to stdout the length of the given string.

# Do not source this script multiple times.
command -v pzp_version > /dev/null && return

# Make the Gawk library available.
export AWKPATH="$AWKPATH:${0:a:h}"

# Get the script version.
function pzp_version {
  echo '0.1.0-SNAPSHOT'
}

# Get the length of a string.
# $1 string
function pzp_length {
  echo "$1" | gawk -i pzp.gawk '{ print(pzp::get_length($0)) }'
}
