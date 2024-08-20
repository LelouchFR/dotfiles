export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:~/.npm-global/bin:/home/lelouch/.cargo/bin/:"

alias lsl="$HOME/Documents/code/rust/ls-enhanced/target/debug/ls-enhanced"
alias lse="ls-enhanced"

ZSH_THEME="lelouch"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
