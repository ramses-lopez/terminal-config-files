# Customizations done overe time

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

alias tailf="tail -f"
alias rbc="rubocop -A"
