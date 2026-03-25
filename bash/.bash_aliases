# meus atalhos para o bash!

# eza (depende do eza instalado!)
alias ls='eza --icons=auto --color=auto --group-directories-first'
alias la='eza --icons=auto --color=auto --group-directories-first -A'
alias l1='eza -1 --icons=auto --group-directories-first'
alias ll='eza -lha --icons=auto --group-directories-first --header'
alias lt='eza --tree --level=2 --icons' # visualização em árvore rápida
alias lg='eza -l --grid --icons'        # visualização em grade

# bat/batcat (depende de cat instalado)
# se existir 'batcat', usa 'batcat', senão tenta 'bat'
if command -v batcat > /dev/null; then
    alias bat='batcat'
    alias cat='batcat --paging=never'
elif command -v bat > /dev/null; then
    alias cat='bat --paging=never'
fi

# rg (depende do ripgrep instalado)
alias r='rg'
alias grep='grep --color=auto'  # para nao dar conflito em scritp

# utils
alias ..='cd ..'
alias c='clear'
alias cp='cp -iv'    # confirma antes de sobrescrever e mostra o que faz
alias mv='mv -iv'    # confirma antes de mover e mostra progresso
alias rm='rm -iv'    # segurança extra: pergunta antes de deletar
alias mkdir='mkdir -pv' # mostra as pastas a serem criadas

# top (depende do htop instaldo)
alias top='htop'     # se você tiver o htop instalado, ele é melhor
alias path='echo -e ${PATH//:/\\n}' # lista cada pasta do seu PATH em uma linha
alias meuip='curl ifconfig.me'      # descobre seu IP público rapidamente
alias df='df -h'     # espaço em disco em formato legível
alias free='free -m' # memória RAM em MB

# git (depende do git instalado)
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'

# * usar na pasta com "uv" configurado.
alias uvenv='source .venv/bin/activate'

# scripts
alias run_dots='~/Scripts/dots.sh'

# source
reload() {
    source ~/.bashrc
    echo "Shell recarregado!"
}
alias super_reload='exec bash'
