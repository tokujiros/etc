simplify_prompt() {
		export PROMPT='%c $ '
}


# ここから https://qiita.com/iwaseasahi/items/a2b00b65ebd06785b443

# 追加したソフトやパッケージ用のコマンドのパスを通す
export PATH=/usr/local/bin:/opt/homebrew/opt/ruby/bin:/opt/homebrew/bin:$PATH

# rbenvのパスを通す
eval "$(rbenv init -)"

# zplugを導入するPATH
# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/test_user/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# oh-my-zshで利用できるテーマを指定
ZSH_THEME="candy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# oh my zshで利用できるプラグインを指定
plugins=(brew brew-cask cdd gem git rbenv vagrant zsh-syntax-highlighting zsh-completions)

# zsh-completionsの設定
autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'
alias v='vim'
alias vi='vim'
alias r='ruby'
alias mss='mysql.server start'
alias so='source'
alias be='bundle exec'
alias ber='bundle exec ruby'
alias rs='rails s'
alias rc='rails c'
alias bers='bundle exec rails s'
alias berc='bundle exec rails c'
alias sberc='sudo bundle exec rails c'
alias Kobito='cd ~/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/'

# 文字コードの指定
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# キーバインディングをemacs風にする
bindkey -d
bindkey -e

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
