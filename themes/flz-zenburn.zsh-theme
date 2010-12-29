# Only good for GNU Coreutils ls. So
export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'

if [ -x /opt/local/libexec/gnubin/ls ]; then
	alias ls='/opt/local/libexec/gnubin/ls --color=auto' 
elif [ -x /usr/local/bin/gls ]; then
	alias ls='/usr/local/bin/gls --color=auto'
else
	alias ls='ls --color=auto'
fi

ZSH_THEME_VCS_PROMPT_PREFIX="%{[38;5;220m%}["
ZSH_THEME_VCS_PROMPT_SUFFIX="]%{$reset_color%}"

export PS1='%(!.%{[31m%}.%{[38;5;187m%})%m%{[38;5;174m%} %3c%{[m%} %(?.%#.%{[38;5;174m%}%#%{[00m%}) '
export RPROMPT='$(vcs_info_prompt)'
