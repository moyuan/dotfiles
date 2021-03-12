# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/mychen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git docker docker-compose
)

#plugins+=(zsh-nvm)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
fpath=( "$HOME/.zfunctions" $fpath  )
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source ~/.zsh-nvm/zsh-nvm.plugin.zsh
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

#Add PYTHONPATH
#export PYTHONPATH="${PYTHONPATH}:/home/mychen/fmlcloud_website/eco_web/eco_web:/home/mychen/robotframework_project/autotest"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin:/usr/local/openresty/bin
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

autoload -U promptinit; promptinit
prompt pure

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.cargo/bin:$PATH"
export FM_ENV="$HOME/buildenv/64bit"
export FM_ENV32="$HOME/buildenv/32bit"
export FM_SRC="/fortimail-64/usr/src/fortimail/"
export FM_SRC32="/fortimail-32/usr/src/fortimail/"
export FM_BASE="/fortimail-64"
export FM_BASE32="/fortimail-32"
export SVN_EDITOR="vim"
alias vi="/usr/local/bin/vim"
alias cm="cd $FM_SRC"
alias cm32="cd $FM_SRC32"
alias eclipse-cpp='cm;/usr/local/fortimail/lib/fm/eclipse-cpp -vmargs -Xms512m -Xmx16000m'
alias fmcode="/usr/local/fortimail/lib/fm/code --user-data-dir $FM_BASE/root/code-user-dir/"
alias fmclion='/usr/local/fortimail/lib/fm/clion'
alias kdev='/usr/local/fortimail/lib/fm/kdev'
alias fzsh='/usr/local/fortimail/lib/fm/zsh'
alias fsh='if [ "${PWD##$FM_BAE}" != "${PWD}" ] || [ "${PWD##$FM_BASE}" != "${PWD}" ]; then echo "in base" && fzsh ; else echo "not in base" && cm && fzsh; fi'
alias eclipse='cd $HOME/eclipse/cpp/eclipse; ./eclipse'
alias make='/usr/local/fortimail/lib/fm/make'
alias gvim='/usr/local/fortimail/lib/fm/gvim'
alias fvi='/usr/local/fortimail/lib/fm/vim'
alias vpnott1="$HOME/Downloads/forticlientsslvpn/64bit/forticlientsslvpn_cli --server ott-vpn1.myfortinet.com:10443 --vpnuser mychen --keepalive"
alias vpnott2="$HOME/Downloads/forticlientsslvpn/64bit/forticlientsslvpn_cli --server ott-vpn2.myfortinet.com:10443 --vpnuser mychen --keepalive"
alias vpnvan="$HOME/Downloads/forticlientsslvpn/64bit/forticlientsslvpn_cli --server van-vpn1.myfortinet.com:443 --vpnuser mychen --keepalive"
alias myubuntu="ssh mychen@172.20.110.76"
alias ch="fm-chroot-run $FM_BASE"
alias ch32="fm-chroot-run $FM_BASE32"
#alias mkvdi="gunzip -f image.gz; VBoxManage convertfromraw image image.vdi; vboxmanage unregistervm fmlvbox --delete; mv image.vdi $HOME/images; ~/projects/scripts/create_vbox.sh"
alias mkvdi="~/projects/scripts/create_vbox.sh"
alias vnc_myubuntu="ssh mychen@172.20.110.76 -L 5901:localhost:5901 'x11vnc -display :0 -noxdamage'"
alias szh="source $HOME/.zshrc"
alias bash="/usr/local/fortimail/lib/fm/bash"
alias chvim="/usr/local/fortimail/lib/fm/vim"
alias rgc="rg -tcpp -tc"
alias twork="tmux new -t work"
alias tcode="tmux new -t code"
alias tmy="tmux new -t my"
alias vz="vi ~/.zshrc"
alias sz="source ~/.zshrc"
alias vv="vi ~/.vimrc"
export KUBECONFIG="$HOME/devk8s-admin.conf"
source "/etc/profile.d/rvm.sh"
alias xx="ffdsf"
