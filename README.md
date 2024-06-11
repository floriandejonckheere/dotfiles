# Dotfiles

## Dependencies

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```sh
brew install git wget gpg2 gnupg pinentry-mac nano nanorc
```

## Configuration

Configure GPG:

```sh
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
echo "use-agent" > ~/.gnupg/gpg.conf
```

Configure Nano:

```sh
echo 'include "'"$(brew --cellar nano)"'/*/share/nano/*.nanorc"' > ~/.nanorc
```
