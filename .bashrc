#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# EVAL SSH AGENT
if [ -z "$SSH_AUTH_SOCK" ]; then
	eval "$(ssh-agent -s)" >/dev/null
	ssh-add ~/.ssh/hwollwage >/dev/null 2>&1
fi

# ALIASES
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# SYS ALIASES
alias esp='source ~/.config/esp/export-esp.sh'

# ALIASES MOD
alias h='history'
alias adog='git log --all --decorate --oneline --graph' #git config --global alias.adog "log --all --deco......"
alias open='xdg-open'
alias src='source ~/.bashrc'
alias ex='exit'
alias exi='exit'
alias sht='shutdown -h now'
alias rbt='reboot'
alias CD='cd'
alias LS='ls'
alias rst='reset'
alias cls='clear'

PS1='[\u@\h \W]\$ '

# EXPORT PATH
export HISTTIMEFORMAT="%A %d %B %Y %T  " 
export HISTSIZE=-1
export HISTFILESIZE=-1
export SAVEHIST=999999999
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/fvm/default/bin"
export PATH="$PATH:$HOME/.platformio/penv/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# EVAL
eval "$(starship init bash)"

# ENABLE BASH COMPLETION
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi

# DISABLE TERMINAL BELL
bind 'set bell-style none'
