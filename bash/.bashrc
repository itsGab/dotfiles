# ~/.bashrc limpo

# Interatividade
case $- in
    *i*) ;;
      *) return;;
esac

# Histórico
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Opções do Shell
shopt -s checkwinsize

# Less e Chroot
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# PATH Unificado (Adicione aqui todos os seus caminhos)
export PATH="$HOME/.local/bin:$HOME/.opencode/bin:$PATH"

# Carregar Aliases Externos (Mantenha seus atalhos aqui!)
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Inicialização de Ferramentas
. "$HOME/.cargo/env"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source /home/itsgabr/alacritty/alacritty/extra/completions/alacritty.bash

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(register-python-argcomplete pipx)"
