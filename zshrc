#-- ALIASES --#
[[ -f ~/.zsh/aliases ]] && source ~/.zsh/aliases

#-- PREFERENCES --#
PROMPT="%F{#f07178}%n%f | %B%F{#89ddff}%~%f%b $ "
export CLICOLOR=1

#-- EDITOR --#
export EDITOR=nano
export VISUAL=$EDITOR

#-- NODEJS --#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#-- RUBY --#
# Update PATH to run Ruby commands from .rbenv/shims first, then fallback to /usr/local instead of /usr/bin.
RUBY_PATH_SETTINGS="~/.rbenv/shims:/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin"

#-- PATH --#
export PATH="$RUBY_PATH_SETTINGS:/usr/local/sbin:$PATH"
