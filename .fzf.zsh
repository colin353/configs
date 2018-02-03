# Setup fzf
# ---------
if [[ ! "$PATH" == */home/colin/.fzf/bin* ]]; then
  export PATH="$PATH:/home/colin/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/colin/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/colin/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='ag -g ""'
