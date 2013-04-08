### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/pipecork/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update later on, just run that command again.
