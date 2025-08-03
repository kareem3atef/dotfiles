# Allow vi mode in zsh
# bindkey -v
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
#
# DISABLE_LS_COLORS="true"
# enable color support of ls, less and man, and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions
#
#    #alias ls='lsd'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    alias grep='grep --color=auto'
#    alias fgrep='fgrep --color=auto'
#    alias egrep='egrep --color=auto'
#    alias diff='diff --color=auto'
#    alias ip='ip --color=auto'
#
#    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
#    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
#    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
#    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
#    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
#    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
#    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
#
#    # Take advantage of $LS_COLORS for completion as well
#    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#    zstyle ':completion:::kill::processes' list-colors '=(#b) #([0-9]#)=0=01;31'
#fi
#

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize
	git
	zsh-autosuggestions
    you-should-use
    # zsh-autocomplete
	zsh-syntax-highlighting
	colored-man-pages
	docker
    web-search
	systemd
    # colorize
    conda
    dbt
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias bat=batcat
alias ls=lsd
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'


export BAT_THEME="Monokai Extended"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



############
# to add telegram to the path variable ###
#$PATH=$PATH:/usr/local/bin/Telegram
##############


## to customize zsh plugin ##
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#abd8eb"
###

## add ~/.local to the path
#PATH=/home/kareem/.local/bin:$PATH
#### add kitty to the path variable
#PATH=/home/kareem/.local/kitty.app/bin:$PATH
######


#
### add go the path ##
#PATH=$PATH:/usr/local/go/bin
#PATH=$PATH:$HOME/go/bin
#####
##add brew to the path
#PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
#####
#
#
#### a trivial way to be able to change the backlight brightness ###
##chmod 666 /sys/class/backlight/amdgpu_bl1/brightness
###########
#
#
#
######## lf icons #####
#export LC_CTYPE=en_US.UTF-8
#
##neofetch
#export LF_ICONS="di=📁:\
#fi=📃:\
#tw=🤝:\
#ow=📂:\
#ln=⛓:\
#or=❌:\
#ex=🎯:\
#*.txt=✍:\
#*.mom=✍:\
#*.me=✍:\
#*.ms=✍:\
#*.png=🖼:\
#*.webp=🖼:\
#*.ico=🖼:\
#*.jpg=📸:\
#*.jpe=📸:\
#*.jpeg=📸:\
#*.gif=🖼:\
#*.svg=🗺:\
#*.tif=🖼:\
#*.tiff=🖼:\
#*.xcf=🖌:\
#*.html=🌎:\
#*.xml=📰:\
#*.gpg=🔒:\
#*.css=🎨:\
#*.pdf=📚:\
#*.djvu=📚:\
#*.epub=📚:\
#*.csv=📓:\
#*.xlsx=📓:\
#*.tex=📜:\
#*.md=📘:\
#*.r=📊:\
#*.R=📊:\
#*.rmd=📊:\
#*.Rmd=📊:\
#*.m=📊:\
#*.mp3=🎵:\
#*.opus=🎵:\
#*.ogg=🎵:\
#*.m4a=🎵:\
#*.flac=🎼:\
#*.wav=🎼:\
#*.mkv=🎥:\
#*.mp4=🎥:\
#*.webm=🎥:\
#*.mpeg=🎥:\
#*.avi=🎥:\
#*.mov=🎥:\
#*.mpg=🎥:\
#*.wmv=🎥:\
#*.m4b=🎥:\
#*.flv=🎥:\
#*.zip=📦:\
#*.rar=📦:\
#*.7z=📦:\
#*.tar.gz=📦:\
#*.z64=🎮:\
#*.v64=🎮:\
#*.n64=🎮:\
#*.gba=🎮:\
#*.nes=🎮:\
#*.gdi=🎮:\
#*.1=ℹ:\
#*.nfo=ℹ:\
#*.info=ℹ:\
#*.log=📙:\
#*.iso=📀:\
#*.img=📀:\
#*.bib=🎓:\
#*.ged=👪:\
#*.part=💔:\
#*.torrent=🔽:\
#*.jar=♨:\
#*.java=♨:\
#"
#
#
#
###### the ctpv configurations ###
#export CTPV_WORKDIR=~/.cache/ctpv
#export CTPV_CLEANUP=1
###########################3
#
#
#
#
#
##### harfbuzz libs and src #####33
##export LD_LIBRARY_PATH=/home/kareem/Documents/harfbuzz/harfbuzz-11.0.0/src:$LD_LIBRARY_PATH
##export PKG_CONFIG_PATH=/home/kareem/Documents/harfbuzz/harfbuzz-11.0.0:$PKG_CONFIG_PATH
####################
##export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
#
#
#
#
### alias for wifi nmtui connection ##
#alias wifi=nmtui
######
#
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#
#
#
#
#
##### fontss ####
##xset +fp /home/kareem/.local/share/fonts
##xset fp rehash


for file in ~/.zshrc.d/*.zsh; do
  source "$file"
done


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kareem/.miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kareem/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kareem/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kareem/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

fpath+=${ZDOTDIR:-~}/.zsh_functions
