autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/darshan/.config/zsh-syntax-highlighting
source /home/darshan/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

unsetopt beep

set -o vi

# Custom aliases
alias sudo="doas"
