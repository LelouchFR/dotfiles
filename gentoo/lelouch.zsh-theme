PROMPT=" %(?:%{$fg_bold[green]%}%1{󰣨%} :%{$fg_bold[red]%}%1{󰣨%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

RPROMPT='$(~/.config/usr/battery_level.sh)' # %{$fg[cyan]%}|%{$reset_color%} $(~/.config/usr/ssid_name.sh)
ZLE_RPROMPT_INDENT=0
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
