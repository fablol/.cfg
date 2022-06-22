#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/ffqi/.cfg/ --work-tree=/home/ffqi'
. "$HOME/.cargo/env"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls --color=auto'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias lg='lazygit'
alias ra='ranger'

export MANPAGER="less -R --use-color -Dd+r -Du+b"
export LESS='-R --use-color -Dd+r$Du+b'

autoload -U compinit && compinit

# rust
export PATH=$PATH:$HOME/.cargo/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.local/bin/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

# goproxy
export GOPROXY=https://proxy.golang.com.cn,direct

# config
alias config='/usr/bin/git --git-dir=/home/ffqi/.cfg/ --work-tree=/home/ffqi'
alias lg_cfg='lazygit --git-dir=/home/ffqi/.cfg/ --work-tree=/home/ffqi'

# ranger
# export RANGER_LOAD_DEFAULT_RC=FALSE

# ruby
export PATH=$PATH:$HOME/.rbenv/bin

# black
export PATH=$PATH:$HOME/.local/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
