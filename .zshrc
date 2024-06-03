export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"


PROMPT=" %(?:%{$fg_bold[green]%}%1{󰣇%}:%{$fg_bold[red]%}%1{󰣇%} ) %{$fg[cyan]%}%c%{$reset_color%} "
PROMP+="%f$git_prompt_info %#"

alias py="python"
# alias pyxel="/home/lelouchfr/.local/share/pipx/venvs/pyxel/bin/pyxel"

function nvims() {
    items=("default" "nvchad-nvim")
    config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" NeoVim Config >" --height=~50% --layout=reverse --border --exit-0)
    if [ -z $config ]; then
        echo "Nothing Selected"
        return 0
    elif [ $config = "default" ]; then
        config=""
    fi
    NVIM_APPNAME=$config nvim $@
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

bindkey -s ^z "clear\n"
bindkey -s ^n "nvim\n"
bindkey -s ^o "neofetch \n"
bindkey -s ^s "source ~/.zshrc\n"
bindkey -s ^q "tmux attach -t 0\n"

source $ZSH/oh-my-zsh.sh
source $ZSH
