# Grant permission

echo "Granting admin permission to $USER"
sudo chown -R $USER:admin /usr/local


echo "Cloning vimfiles"

git clone git@github.com:chrisenytc/vimfiles.git $HOME/.vim

# Copy templates

echo "Copying templates:"

ln -s $HOME/.vim/vimrc ~/.vimrc
ln -s $HOME/.vim/gvimrc ~/.gvimrc

ln -s $(pwd)/templates/gitconfig ~/.gitconfig
ln -s $(pwd)/templates/npmrc ~/.npmrc
ln -s $(pwd)/templates/zshrc ~/.zshrc

echo "Creating secret configs for zsh"
touch $HOME/.zsh-secret-configs

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

# Enytc Lab
mkdir $LABS_PATH/Enytc
# Languages
mkdir $LABS_PATH/Enytc/Node
mkdir $LABS_PATH/Enytc/Ruby
mkdir $LABS_PATH/Enytc/Go
mkdir $LABS_PATH/Enytc/Elixir
mkdir $LABS_PATH/Enytc/Shell
mkdir $LABS_PATH/Enytc/Web

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

echo "Installing hub"
brew install hub

echo "Installing wget"
brew install wget

echo "Installing vim"
brew install vim

echo "Installing neovim"
brew install neovim

echo "Installing Cask"
brew tap caskroom/cask

echo "Installing MacVim"
brew cask install macvim

echo "Installing VimR"
brew cask install vimr

echo "Installing TunnelBlick"
brew cask install tunnelblick

echo "Installing Ngrok"
brew cask install ngrok

# Install programming languages

echo "Installing nodenv"
brew install nodenv
brew upgrade node-build

echo "--------------------------------------------------------------------------------------------------------------"
echo "Done!"
