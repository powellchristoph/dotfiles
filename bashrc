export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

for file in ~/.{bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

eval "$(hub alias -s)"

# Set up colors for Mac
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

# Prompt
#export PS1="\[\033[36m\]chris\[\033[m\]@\[\033[32m\]mac:\[\033[33;1m\]\w\[\033[m\]\$ "

