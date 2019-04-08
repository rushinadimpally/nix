with import <nixpkgs> {};

pkgs.writeText "zshrc_rushi" ''
export TERM=xterm-256color

# Use oh-my-zsh
export ZSH=${pkgs.oh-my-zsh}/share/oh-my-zsh/
. $ZSH/oh-my-zsh.sh

source ${pkgs.zsh-powerlevel9k}/share/zsh-powerlevel9k/powerlevel9k.zsh-theme

ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_DISABLE_RPROMPT=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
plugins=(git,
	fzf,
)

# Source aliases file
. ~/.aliases

# Source the nix paths
. ~/.nix-profile/etc/profile.d/nix.sh

''