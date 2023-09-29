######################################################################
# Standard Stuff
######################################################################

# compinstall (first-time setup wizard) adds this to help in case the setup is run again in the future.
#
zstyle :compinstall filename '/home/mts/.zshrc'
# Setup History
HISTFILE=~/.histfile
HISTSIZE=365000
SAVEHIST=365000

# A few basic options when seem to be sane defaults.
setopt autocd extendedglob nomatch notify

# Don't beep whenever there is an error
unsetopt beep

# Use Vi keybindings and key timeout recommended for that setting.
bindkey -v
export KEYTIMEOUT=1

######################################################################
# Autocompletion
######################################################################

# Enable ZSH Command Completion System
autoload -Uz compinit
compinit

# Use arrow-key driven autocomplete interface.
zstyle ':completion:*' menu select

# Source zsh-syntax-highlighting and zsh-autosuggestions
# Both need to be installed via pacman.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


######################################################################
# Enable Git Info via vcs_info
######################################################################

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats $'\Ue725 %b '

setopt PROMPT_SUBST


######################################################################
# My Custom Prompt
######################################################################

# Left Prompt:

# Working directory, Git icon and branch when applicable, and snazzy arrow using nerd-fonts.
PROMPT=$'%F{#8ff0a4}%~%f %F{#e5a50a}%B${vcs_info_msg_0_}%f%b%F{#3584e4}\Uf054%f '

# Right Prompt:

# Version with error code (and snazzy nerd-fonts glyph) when applicable. No right prompt otherwise.
RPROMPT=$'%(?..%F{#c01c28}\Uea6c [%?]%f)'

# Keeping old versions because I may re-implement with function to make responsive to terminal width someday.
# Version with username, and error code (and snazzy nerd-fonts glyph) when applicable.
# RPROMPT=$'%(?..%F{#c01c28}\Uea6c [%?]%f) %F{#78aeed}%B%n%b%f'

# Version with username, error code (and snazzy nerd-fonts glyph) when applicable or checkbox (also nerd-fonts glyph) when no errors.
 # RPROMPT=$'%(?.%F{#26a269}\Uf012c%f.%F{#c01c28}\Uea6c [%?]%f) %F{#78aeed}%B%n%b%f'


######################################################################
# Aliases
######################################################################

# More of a setting - have ls use colors.
alias ls='ls --color=auto'

# My preferred way to run ls.
alias ll='ls -laht'
