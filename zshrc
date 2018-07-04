#### EnvVars

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export GOPATH=$HOME/go

if [ "$OSTYPE"=~"darwin.*" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
  export ANDROID_HOME=~/Library/Android/sdk
  #export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@2/bin/python2.7
fi

#### ENDEnvVars

#### Paths

if [ "$OSTYPE"=~"darwin.*" ]; then
  export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$PATH"
  export PATH=$PATH:$GOPATH/bin:$HOME/bin

  export PATH="/usr/local/opt/gettext/bin:$PATH"
  export PATH="/usr/local/opt/python@2/bin:$PATH"
  export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
  export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
  export PATH="/usr/local/opt/node@6/bin:$PATH"
  export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
fi

#### ENDPaths

#### Imports

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
test -e ${HOME}/.tnsrc && source ${HOME}/.tnsrc

test -e ${HOME}/.auto.work.zsh && source ${HOME}/.auto.work.zsh
test -e ${HOME}/.auto.home.zsh && source ${HOME}/.auto.home.zsh

if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

#### EndImports

#### VariousSettings

ulimit -n 65536 65536

#### ENDVariousSettings

#### CONFIG

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

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

#### ENDCONFIG

source $HOME/antigen.zsh

#### OhMyZshPlugins
antigen use oh-my-zsh

if [ "$OSTYPE"=~"darwin.*" ]; then
  antigen bundle osx
fi
antigen bundles <<EOBUNDLES
  git
  ssh-agent 
  man 
  fabric
  screen
  sudo
  django
  postgres
  rsync
  python
  docker
  docker-compose
  virtualenvwrapper
  gulp
  npm
  node
  bower
  dotenv
  zsh-users/zsh-completions
  zsh-users/zsh-autosuggestions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
EOBUNDLES

#### ENDOhMyZshPlugins

#### CustomPluginsPLUGINS

zstyle :omz:plugins:ssh-agent agent-forwarding on

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#### ENDCustomPluginsPLUGINS

#### Theme

antigen theme robbyrussell

#### ENDTheme

antigen apply

###-tns-completion-start-###
if [ -f /Users/vosi/.tnsrc ]; then 
    source /Users/vosi/.tnsrc 
fi
###-tns-completion-end-###
