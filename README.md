# Dotfiles

## Installation

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```sh
brew install git wget gpg2 gnupg pinentry-mac nano nanorc coreutils curl asdf rbenv ruby-build jq
```

Install teleport:

```sh
curl -O https://cdn.teleport.dev/teleport-9.3.26.pkg
sudo open teleport-9.3.26.pkg
```

Install tools:

```
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf install kubectl 1.27.7
asdf global kubectl 1.27.7
asdf local kubectl 1.27.7

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 22.2.0
asdf global nodejs 22.2.0
asdf local nodejs 22.2.0

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 3.3.2
asdf global ruby 3.3.2
asdf local ruby 3.3.2
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
