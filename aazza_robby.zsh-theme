function virtualenv_info() {
    [ $VIRTUAL_ENV ] && echo " %{$fg_bold[blue]%}env:(%{$fg_bold[red]%}"${${VIRTUAL_ENV}:t}"%{$fg_bold[blue]%})"
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='
${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}${PWD/#$HOME/~}$(virtualenv_info) %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}
%{$fg_bold[green]%}${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
