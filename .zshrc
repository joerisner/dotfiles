#-- ALIASES --#
[[ -f "${HOME}/.zsh/aliases" ]] && source "${HOME}/.zsh/aliases"

#-- PREFERENCES --#
PROMPT="%F{#f07178}%n%f | %B%F{#89ddff}%~%f%b $ "
export CLICOLOR=1

#-- EDITOR --#
export EDITOR=nano
export VISUAL="${EDITOR}"

#-- NODEJS --#
export NVM_DIR="${HOME}/.nvm"
[[ -s "${NVM_DIR}/nvm.sh" ]] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
[[ -s "${NVM_DIR}/bash_completion" ]] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

#-- RUBY --#
# Update PATH to run Ruby commands from .rbenv/shims first, then fallback to /usr/local instead of /usr/bin.
RUBY_PATH_SETTINGS="${HOME}/.rbenv/shims:/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin"

#-- PYTHON --#
export UV_DIR="${HOME}/.uv"
export UV_CACHE_DIR="${UV_DIR}/cache"
export UV_CONFIG_FILE="${UV_DIR}/uv.toml"
export UV_PYTHON_INSTALL_DIR="${UV_DIR}/python/versions"
export UV_PYTHON_BIN_DIR="${UV_DIR}/python/bin"
export UV_PYTHON_DOWNLOADS=manual
export UV_PYTHON_PREFERENCE=only-managed
export UV_TOOL_DIR="${UV_DIR}/tools"
PYTHON_PATH_SETTINGS="${UV_PYTHON_BIN_DIR}"

#-- TERRAFORM --#
export TF_LOG_PATH=./terraform.log

#-- PATH --#
export PATH="${RUBY_PATH_SETTINGS}:${PYTHON_PATH_SETTINGS}:/usr/local/sbin:${PATH}"
