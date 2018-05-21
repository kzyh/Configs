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

# Customize to your needs...
alias cs241="ssh khong18@sp18-cs241-436.cs.illinois.edu"
alias deac="deactivate"
export GPG_TTY=$(tty)

gpip() {
    env PIP_REQUIRE_VIRTUALENV=false pip2 "$@"
}

gpip3() {
    env PIP_REQUIRE_VIRTUALENV=false pip3 "$@"
}

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib\ ${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}
export PATH="/usr/local/opt/python@2/bin:$PATH"
