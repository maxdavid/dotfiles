for d in $(ls); do stow $d; done
# To install these dotfiles without Git:
# cd $HOMEDIR; curl -#L https://github.com/maxdavid/dotfiles/tarball/master | tar -xzv --strip-components 1
