# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="pure"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    osx
    python
    pip
    conda-zsh-completion
    poetry
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
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/paulo/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/paulo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/paulo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/paulo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add Visual Studio Code (code)
# https://code.visualstudio.com/
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Poetry
# https://python-poetry.org/docs/
export PATH="$HOME/.poetry/bin:$PATH"

# Proxy
function setproxy {
	proxy='http://pcosta:p@$$w0rd@webproxyfrb.iglobal.companyname.com:8080'
	export https_proxy=$proxy
	export http_proxy=$proxy
}

function unsetproxy {
	unset https_proxy
	unset http_proxy
}

# ODBC directory
export ODBCINI=/Users/pcosta/miniconda3/envs/ds/etc/odbc.ini
export ODBCSYSINI=/Users/pcosta/miniconda3/envs/ds/etc

# DB passwords

# SQL server
export SQLUSERNAME=FRB\\pcosta
export SQLPASSWORD=p@$$w0rd

# Snowflake
export SNOWFLAKEUSERNAME=pcosta
export SNOWFLAKEPASSWORD=p@$$w0rd

# PYTHONPATH
# PYTHONPATH=/Users/pcosta/Documents/pyfrb/:$PYTHONPATH
# # PYTHONPATH=/Users/pcosta/Documents/ds/frbtools/:$PYTHONPATH
# PYTHONPATH=/Users/pcosta/Documents/ds/sqltools/:$PYTHONPATH
export PYTHONPATH

# Pure theme
# https://github.com/sindresorhus/pure
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

# Allow the use of the z plugin to easily navigate directories
# https://github.com/rupa/z/blob/master/z.sh
. /Users/paulo/.zsh/z.sh

# Conda completion
# https://github.com/esc/conda-zsh-completion/blob/master/_conda
autoload -U compinit && compinit

# Syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting.git
source /Users/paulo/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Poetry autocomplete
# https://python-poetry.org/docs/

# Brew build packages
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig $PKG_CONFIG_PATH"
export LDFLAGS="-L/usr/local/opt/readline/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/readline/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig $PKG_CONFIG_PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/sqlite/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig $PKG_CONFIG_PATH"
export LDFLAGS="-L/usr/local/opt/zlib/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/zlib/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig $PKG_CONFIG_PATH"

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# Need to add pyenv autocomplete
