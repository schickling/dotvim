#########################
# exports ###############
#########################

DOTFILES=$HOME/.dotfiles
SECFILES=$HOME/.secret

# oh my zsh
ZSH=$DOTFILES/oh-my-zsh
ZSH_CUSTOM=$DOTFILES/oh-my-zsh-custom
plugins=(git npm grunt bower gem rake brew go docker)
DEFAULT_USER="johannes"
UPDATE_ZSH_DAYS=4
ZSH_THEME="agnoster"

# paths
export EDITOR=vim
export DOCKER_HOST=tcp://192.168.59.103:2375
export GOPATH=$HOME/.go
export DOTFILES=$HOME/.dotfiles
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

PATH=/usr/local/bin
PATH=/usr/bin:$PATH
PATH=/bin:$PATH
PATH=/usr/sbin:$PATH
PATH=/sbin:$PATH
PATH=/sbin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$HOME/.bin:$PATH
PATH=$DOTFILES/bin:$PATH
PATH=$HOME/.composer/vendor/bin:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/.rbenv/shims:$PATH
PATH=$GOPATH/bin:$PATH

#########################
# sources ###############
#########################

source `brew --prefix`/etc/profile.d/z.sh
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for f in $DOTFILES/aliases/*.sh; do source $f; done
