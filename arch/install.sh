dpath=/dotfiles/arch

if ! command -v pacman &> /dev/null; then
    echo "pacman command not found..."
    exit 1
fi

if ! command -v i3 &> /dev/null; then
    echo -e "i3          [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing i3..."
    sudo pacman -S i3
    echo -e "i3          [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "i3          [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v picom &> /dev/null; then
    echo -e "picom       [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing picom..."
    sudo pacman -S picom
    echo -e "picom       [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "picom       [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v zsh &> /dev/null; then
    echo -e "zsh         [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install zsh..."
    sudo pacman -S zsh
    echo -e "zsh         [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "zsh         [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v nvim &> /dev/null; then
    echo -e "neovim      [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install neovim..."
    sudo pacman -S neovim
    echo -e "neovim      [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "neovim      [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v  polybar &> /dev/null; then
    echo -e "polybar     [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install polybar..."
    sudo pacman -S polybar
    echo -e "polybar     [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "polybar     [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v alacritty &> /dev/null; then
    echo -e "alacritty   [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install alacritty..."
    sudo pacman -S alacritty
    echo -e "alacritty   [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "alacritty   [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v  tmux &> /dev/null; then
    echo -e "tmux        [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install tmux..."
    sudo pacman -S tmux
    echo -e "tmux        [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "tmux        [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v feh &> /dev/null; then
    echo -e "feh         [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "install feh..."
    sudo pacman -S feh
    echo -e "feh         [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "feh         [ \033[0;32mINSTALLED\033[0m ]"
fi

# if [[ $1 == "reusable" ]]; then
#     ln -s $HOME/$dpath/.zshrc $HOME/.zshrc
#     ln -s $HOME/$dpath/.tmux.conf $HOME/.tmux.conf
#     ln -s $HOME/$dpath/.gitconfig $HOME/.gitconfig
#     ln -s $HOME/$dpath/.alacritty.toml $HOME/.alacritty.toml
# else
#     echo "removing gentoo config files"
#     rm -r gentoo
#     echo "removing .github folder"
#     rm -r .github
#     echo "removing README file"
#     rm README.md
#     echo "moving .zshrc file"
#     mv $HOME/$dpath/.zshrc $HOME/.zshrc
#     echo "moving .tmux.conf file"
#     mv $HOME/$dpath/.tmux.conf $HOME/.tmux.conf
#     echo "moving .gitconfig file"
#     mv $HOME/$dpath/.gitconfig $HOME/.gitconfig
#     echo "moving .alacritty.toml file"
#     mv $HOME/$dpath/.alacritty.toml $HOME/.alacritty.toml
#     echo "moving wallpaper directory"
#     mv $HOME/$dpath/wallpaper $HOME/wallpaper
# fi

# echo "removing current neovim config"
# rm -r ~/.config/nvim
# cd $HOME/.config
# git clone https://github.com/lelouchfr/nvim.git
# echo "removed current neovim config and installed new neovim config"
# cd $HOME/$dpath

echo "finished installing the dotfiles, enjoy"
