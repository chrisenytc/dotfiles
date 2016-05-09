# Grant permission

echo "Granting admin permission to $USER"
sudo chown -R $USER:admin /usr/local

# Copy templates

echo "Copying templates:"

ln -s $(pwd)/vimfiles ~/.vim
ln -s $(pwd)/vimfiles/vimrc ~/.vimrc
ln -s $(pwd)/vimfiles/gvimrc ~/.gvimrc
ln -s $(pwd)/templates/gitconfig ~/.gitconfig
ln -s $(pwd)/templates/npmrc ~/.npmrc
ln -s $(pwd)/templates/zshrc ~/.zshrc

# Make the Lab

echo "Making the Lab"

LABS_PATH=$HOME/Labs

mkdir $LABS_PATH

# Personal Lab
mkdir $LABS_PATH/Personal
# Languages
mkdir $LABS_PATH/Personal/C
mkdir $LABS_PATH/Personal/Rust
mkdir $LABS_PATH/Personal/Shell
mkdir $LABS_PATH/Personal/Node
mkdir $LABS_PATH/Personal/Node/Desktop
mkdir $LABS_PATH/Personal/Node/Mobile
mkdir $LABS_PATH/Personal/Ruby
mkdir $LABS_PATH/Personal/Python
mkdir $LABS_PATH/Personal/Go
mkdir $LABS_PATH/Personal/Elixir
mkdir $LABS_PATH/Personal/Ocaml
mkdir $LABS_PATH/Personal/Swift
mkdir $LABS_PATH/Personal/Markdown
mkdir $LABS_PATH/Personal/Web

# EnyTC Lab
mkdir $LABS_PATH/EnyTC
#Languages
mkdir $LABS_PATH/EnyTC/Node
mkdir $LABS_PATH/EnyTC/Ruby
mkdir $LABS_PATH/EnyTC/Web

# Pagar.me Lab
mkdir $LABS_PATH/PagarMe
#Languages
mkdir $LABS_PATH/PagarMe/Node
mkdir $LABS_PATH/PagarMe/Ruby
mkdir $LABS_PATH/PagarMe/Go
mkdir $LABS_PATH/PagarMe/PHP
mkdir $LABS_PATH/PagarMe/Shell
mkdir $LABS_PATH/PagarMe/Markdown
mkdir $LABS_PATH/PagarMe/Web

# Set wallpaper

echo "Copying the wallpaper"

WALLPAPER_PATH=$HOME/Pictures/Wallpaper
mkdir $WALLPAPER_PATH
cp $(pwd)/wallpaper/default.jpg $WALLPAPER_PATH

echo "Back to $HOME"

cd $HOME

# Install oh my zsh
echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install utilities

echo "Installing binaries:"

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing wget"
brew install wget

echo "Installing vim"
brew install vim

echo "Installing Cask"
brew tap caskroom/cask

echo "Installing 1Password"
brew cask install 1password

echo "Installing Opera"
brew cask install opera

echo "Installing Firefox"
brew cask install firefox

echo "Installing Google Chrome"
brew cask install google-chrome

echo "Installing MacVim"
brew cask install macvim

echo "Installing TunnelBlick"
brew cask install tunnelblick

echo "Installing Slack"
brew cask install slack

echo "Installing Skype"
brew cask install skype

echo "Installing Telegram"
brew cask install telegram

echo "Installing Gitter"
brew cask install gitter

echo "Installing Nylas N1"
brew cask install nylas-n1

echo "Installing Stremio"
brew cask install stremio

echo "Installing Ghost"
brew cask install ghost

echo "Installing Cloak"
brew cask install cloak

# Install programming languages

echo "Installing nodenv"
brew install nodenv

echo "Installing pyenv"
brew install pyenv

echo "Installing rbenv"
brew install rbenv

echo "Installing gvm"

zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo "Installing rust"
brew cask install rust

echo "Installing rust"
brew install elixir

echo "Installing ocaml"
brew install ocaml

echo "Installing opam"
brew install opam

echo "Installing Docker Toolbox"
brew cask install dockertoolbox

echo "Creating Docker Virtual Machine"
docker-machine create --driver virtualbox default

echo "--------------------------------------------------------------------------------------------------------------"
echo "Done!"
