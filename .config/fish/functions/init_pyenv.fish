function init_pyenv --description "Init pyenv and enable shell integration"
  # Enable pyenv shim and autocompletion
  if which pyenv
    status --is-interactive; and pyenv init - | source
    # status --is-interactive; and pyenv virtualenv-init - | source
  end
end
