# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt autocd beep nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/irmik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# To use power10klevel with zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Function to swap between es and us layouts
swap_layouts() {
	if [ "$(setxkbmap -query | awk '/layout/{print $2}')" = "us" ]; then
		setxkbmap -layout es
	else
		setxkbmap -layout us
	fi	
}

# Aliases
alias ls='ls --color=auto'
alias ll='ls -ltrh'
alias upvault="bash ~/github/obsidian/update_vault.sh"
alias skey='swap_layouts'

# If ssh-agent was started as service with systemd
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
