# Retrieve N-th piped command exit status:
printf 'foo' | grep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# To create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'
