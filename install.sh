## Helpful install script for dotfiles
echo "Linking profile"
if [[ "Darwin" == "$(uname -a)" ]];
then
    ln -s ./mac_profile ~/.profile
fi

echo "Linking tmux.conf"
ln -s ./tmux.conf ~/.tmux.conf

echo "Linking vimrc"
ln -s ./vimrc ~/.vimrc
