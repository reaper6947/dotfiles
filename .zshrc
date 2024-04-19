[[ -r ~/.zsh-plugins/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.zsh-plugins/zsh-snap/znap.zsh


source ~/.zsh-plugins/zsh-snap/znap.zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="yyyy-mm-dd"
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS


# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# just zsh configs
ZSH_AUTOSUGGEST_STRATEGY=(history)
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )

# sources

znap source fzf-tab
znap source zsh-users/zsh-completions
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
znap source ael-code/zsh-colored-man-pages
# new autocomplete
znap source marlonrichert/zsh-autocomplete 
znap source none9632/zsh-sudo
znap source oh-my-zsh lib/completion


# spaceship config
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_PROMPT_SUFFIXES_SHOW=true
SPACESHIP_PROMPT_DEFAULT_PREFIX=" via "
#SPACESHIP_PROMPT_ASYNC=false


#git 
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_GIT_PREFIX=" on "

# DIR
SPACESHIP_DIR_SHOW=true
# SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_TRUNC_PREFIX=".../"
SPACESHIP_DIR_TRUNC=3

# async
SPACESHIP_ASYNC_SYMBOL=""


znap source spaceship-prompt/spaceship-prompt
# fpath+=$(znap path spaceship)
# znap eval spaceship 'spaceship init zsh'
znap prompt spaceship-prompt/spaceship-prompt spaceship 

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
