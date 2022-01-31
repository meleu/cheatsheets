# best way to get the full path where the script is placed
# (works even if the script is sourced)
DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" && pwd )"


# read a file line by line
while IFS= read -r line || [[ -n "${line}" ]]; do
  echo "${line}" # do something more interesting here
done


# Retrieve N-th piped command exit status:
printf 'foo' | grep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N


# create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'


# Parameter Expansion
###############################################################################
${#parameter}       # The length in characters. If 'parameter' is an array,
                    # return the number of elements.
${parameter:-word}  # Default Value:
                    # If 'parameter' is unset or null, 'word' is substituted.
${parameter:=word}  # Assign Default Value:
                    # Similar to "Default Value", but assign 'word' to 'parameter'
${parameter:+word}  # Use Alternate Value:
                    # If 'parameter' is null or unset, nothing is substituted,
                    # otherwise 'word' is substituted.
${parameter:offset:length} # Substring Expansion:
                    # Expands to up to 'length' characters of 'parameter'
                    # starting at the character specified by 'offset'
                    # If ':length' is omitted, go all the way to the end.
                    # If 'offset' is negative (use parentheses!), count
                    # backward from the end of 'parameter'.
                    # If 'parameter' is @ or an array, the result is 'length'
                    # positional parameters or members of the array,
                    # respectively, starting from 'offset'.
${parameter#pattern} # Delete the first match of 'pattern' in the beginning
                    # of 'parameter'.
                    # If 'parameter' is an array, this will be done on each
                    # element. Same for all following items.
${parameter##pattern} # As above, but the longest match is deleted.
${parameter%pattern} # Delete the first match of 'pattern' in the end of 'parameter'.
${parameter%%pattern} # As above, but the longest match is deleted.
${parameter/pat/string} # Replace first occurence of 'pat' with 'string'.
                    # Assume null string when the '/string' part is absent.
${parameter//pat/string} # As above, but every match of 'pat' is replaced.
${parameter/#pat/string} # As above, but matched against the beginning.
                    # Useful for adding a common prefix with a null pattern:
                    # "${array[@]/#/prefix}".
${parameter/%pat/string} # As above, but matched against the end.
                    # Useful for adding a common suffix with a null pattern. 
