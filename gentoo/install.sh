dpath=/dotfiles/gentoo

if ! command -v emerge &> /dev/null; then
    echo "emerge command not found..."
    exit 1
fi

if ! command -v i3 &> /dev/null; then
    echo -e "i3          [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing i3..."
    sudo emerge --ask x11-wm/i3
    echo -e "i3          [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "i3          [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v nvim &> /dev/null; then
    echo -e "neovim      [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing alacritty..."
    sudo emerge --ask app-editors/neovim
    echo -e "neovim      [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "neovim      [ \033[0;32mINSTALLED\033[0m ]"
fi

echo "removing current neovim config"
rm -r ~/.config/nvim
cd $HOME/.config
git clone https://github.com/lelouchfr/nvim.git
echo "removed current neovim config and installed new neovim config"
cd $HOME/$dpath

if ! command -v alacritty &> /dev/null; then
    echo -e "alacritty   [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing alacritty..."
    sudo emerge --ask x11-terms/alacritty
    echo -e "alacritty   [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "alacritty   [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v feh &> /dev/null; then
    echo -e "feh         [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing feh..."
    sudo emerge --ask media-gfx/feh
    echo -e "feh         [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "feh         [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v zsh &> /dev/null; then
    echo -e "zsh         [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing zsh..."
    sudo emerge --ask app-shells/zsh
    echo -e "zsh         [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "zsh         [ \033[0;32mINSTALLED\033[0m ]"
fi

if [ ! -d $HOME/.oh-my-zsh/ ]; then
    echo -e "oh my zsh   [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing oh my zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo -e "oh my zsh   [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "oh my zsh   [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v cargo &> /dev/null; then
    echo -e "rust        [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing rust..."
    sudo emerge --ask dev-lang/rust
    echo -e "rust        [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "rust        [ \033[0;32mINSTALLED\033[0m ]"
fi

if ! command -v ls-enhanced &> /dev/null; then
    echo -e "ls-enhanced [ \033[0;31m NOT INSTALLED\033[0m ]"
    echo "installing ls-enhanced..."
    cargo install ls-enhanced --locked
    echo -e "ls-enhanced [ \033[0;32mINSTALLED\033[0m ]"
else
    echo -e "ls-enhanced [ \033[0;32mINSTALLED\033[0m ]"
fi

if [[ $1 == "reusable" ]]; then
    echo "linking .alacritty.toml file"
    ln -s $HOME/$dpath/.alacritty.toml $HOME/.alacritty.toml
    echo "linking .fehbg file"
    ln -s $HOME/$dpath/.fehbg $HOME/.fehbg
    echo "linking .gitconfig file"
    ln -s $HOME/$dpath/.gitconfig $HOME/.gitconfig
    echo "linking .zshrc file"
    ln -s $HOME/$dpath/.zshrc $HOME/.zshrc
    echo "linking wallpaper directory"
    ln -s $HOME/$dpath/wallpaper/* $HOME/wallpaper
    echo "linking usr directory"
    ln -s $HOME/$dpath/.config/usr/* $HOME/.config/usr
    echo "linking i3 directory"
    ln -s $HOME/$dpath/.config/i3/* $HOME/.config/i3
    echo "linking ls-enhanced directory"
    ln -s $HOME/$dpath/.config/lse/* $HOME/.config/lse
    echo "linking lelouch.zsh-theme file"
    ln -s $HOME/$dpath/lelouch.zsh-theme $HOME/.oh-my-zsh/themes/lelouch.zsh-theme
elif [[ $1 == "unusable" ]]; then
    echo "removing arch config files"
    rm -r arch
    echo "removing .github folder"
    rm -r .github
    echo "removing README file"
    rm README.md
    echo "moving .alacritty.toml file"
    mv $HOME/$dpath/.alacritty.toml $HOME/.alacritty.toml
    echo "moving .fehbg file"
    mv $HOME/$dpath/.fehbg $HOME/.fehbg
    echo "moving .gitconfig file"
    mv $HOME/$dpath/.gitconfig $HOME/.gitconfig
    echo "moving .zshrc file"
    mv $HOME/$dpath/.zshrc $HOME/.zshrc
    echo "moving wallpaper directory"
    mv $HOME/$dpath/wallpaper/* $HOME/wallpaper/
    echo "moving usr directory"
    mv $HOME/$dpath/.config/usr/* $HOME/usr/
    echo "moving i3 directory"
    mv $HOME/$dpath/.config/i3/* $HOME/i3/
    echo "moving ls-enhanced directory"
    mv $HOME/$dpath/.config/lse/* $HOME/lse/
    echo "moving lelouch.zsh-theme file"
    mv $HOME/$dpath/lelouch.zsh-theme $HOME/.oh-my-zsh/themes/lelouch.zsh-theme
fi

echo "finished installing the dotfiles, enjoy"
