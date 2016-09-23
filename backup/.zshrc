#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

fpath=(/usr/local/share/zsh-completions $fpath)

. ~/.aliases
. ~/.functions
. ~/.plugins/z.sh
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#unalias find

setopt RM_STAR_WAIT
setopt MULTIOS
setopt AUTO_PUSHD
setopt PUSHD_MINUS
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS
setopt NUMERIC_GLOB_SORT
setopt RC_EXPAND_PARAM

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

eval "$(thefuck --alias)"
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
