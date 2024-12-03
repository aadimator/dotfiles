#! /bin/zsh

DOTFILES=(.gitconfig .gitignore .zshrc)

for dotfile in ${DOTFILES[@]}; do
    ln -sf ~/workspace/dotfiles/$dotfile ~/$dotfile
done

# To make the script executable, run the following command:
# chmod +x /Users/aadam/workspace/dotfiles/config.sh