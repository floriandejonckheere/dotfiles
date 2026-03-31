# Dotfiles

## Installation

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install dependencies:

```sh
brew install git wget gpg2 gnupg pinentry-mac nano nanorc coreutils curl asdf rbenv ruby-build jq gh watch ffmpeg rsync htop gemini-cli postgresql gsed
brew install --cask qlvideo
```

Install tools:

```
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest

asdf plugin-add python https://github.com/asdf-community/asdf-python
asdf install python latest
```

Install RVM:

```
gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash
rvm install ruby-3.4.7
```

Install Oh My Zsh and plugins:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Install Nerd fonts:

```sh
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf && open MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf && open MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf && open MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf && open MesloLGS%20NF%20Bold%20Italic.ttf
```

## Configuration

Configure git:

```sh
git config --global user.name "Florian Dejonckheere"
git config --global user.email "florian@floriandejonckheere.be"
```

Configure GPG:

```sh
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf
echo "use-agent" > ~/.gnupg/gpg.conf
```

Configure Nano:

```sh
echo 'include "'"$(brew --cellar nano)"'/*/share/nano/*.nanorc"' > ~/.nanorc
```

Configure Gemini by adding the API key to `~/.gemini/config`:

```sh
mkdir -p ~/.gemini
echo "GEMINI_API_KEY=my_key" > ~/.gemini/config
```

Configure key repeat beyond normal minima:

```sh
defaults write -g InitialKeyRepeat -float 12.5 # Minimum you can set in the UI is 15 (225ms)
defaults write -g KeyRepeat -float 1.0 # Minimum you can set in the UI is 2.0 (30ms)
```
