source ~/.profile
CASE_SENSITIVE="true"
source /usr/share/zsh/share/antigen.zsh 

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle https://github.com/aperezdc/zsh-fzy
# Load the theme.
antigen theme dogenpunk

antigen bundle kazhala/dotbare
# Tell Antigen that you're done.
antigen apply

# add custom files to the Path
export PATH=$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH

zstyle ':completion:*' completer _complete _ignored 
zstyle ':completion:*' expand prefix 
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle :compinstall filename '/home/armin/.zshrc'

# Configure History
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=500

#
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
# Vim is love, vim is live
bindkey -v

bindkey '\ec' fzy-cd-widget

bindkey  fzy-history-widget

bindkey  fzy-file-widget 

# --------Colors&Co--------
source ~/.local/share/nvim/plugged/falcon/exa/EXA_COLORS

# --------Aliases ---------
alias v='nvim --listen /tmp/mynvimserver'
alias go=xdg-open
alias r=ranger
alias m="cd ~/attachments && neomutt && cd -"
alias fuck='sudo $(history -p \!\!)'
alias sudo='sudo '
alias ls='exa'
alias la='exa -la'
alias lg='exa -l --git --git-ignore'
alias lt='exa -lT'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles_repo/ --work-tree=$HOME'
alias mobileprint='echo ""| neomutt -s "" mobileprint@hpi.de -a '
alias ssh='TERM=xterm ssh '
alias g=git
alias gi=git
alias gitignore='curl https://www.toptal.com/developers/gitignore/api/latex >.gitignore'
alias bat=cat
