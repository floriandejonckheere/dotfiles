# Dotfiles

## Installation

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```sh
brew install git wget gpg2 gnupg pinentry-mac nano nanorc coreutils curl asdf rbenv ruby-build jq gh watch ffmpeg
```

Install teleport:

```sh
curl -O https://cdn.teleport.dev/teleport-9.3.26.pkg
sudo open teleport-9.3.26.pkg
```

Install tools:

```
asdf plugin-add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf install kubectl latest
asdf global kubectl latest
asdf local kubectl latest

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
asdf local nodejs latest

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby latest
asdf global ruby latest
asdf local ruby latest

asdf plugin-add argocd https://github.com/beardix/asdf-argocd.git
asdf install argocd latest
asdf global argocd latest
asdf local argocd latest

asdf plugin-add azure-cli https://github.com/EcoMind/asdf-azure-cli
asdf install azure-cli latest
asdf global azure-cli latest
asdf local azure-cli latest

asdf plugin-add python https://github.com/asdf-community/asdf-python
asdf install python latest
asdf global python latest
asdf local python latest
```

Install Oh My Zsh and plugins:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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
