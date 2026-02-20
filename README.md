# Dotfiles

Meu setup de configuração pessoal.

## Estrutura

```
dotfiles/
├── bash/                   # Configurações do Bash
│   ├── .bashrc             # Configurações do shell
│   └── .bash_aliases       # Atalhos e aliases
├── .config/
│   ├── alacritty/          # Terminal Alacritty
│   │   ├── alacritty.toml  # Configuração principal
│   │   └── catppuccin-mocha.toml  # Tema Catppuccin
│   └── VSCodium/
│       └── User/
│           └── settings.json  # Configurações do editor
├── scripts/
│   └── dots.sh             # Script de sincronização
├── core-pkgs.yaml          # Lista de pacotes essenciais
└── vscodium-exts.txt       # Extensões do VSCodium
```

## Instalação

### 1. Instalar dependências

```bash
# Alacritty
# - Alacritty: https://github.com/alacritty/alacritty

# Apt (Debian/Ubuntu)
sudo apt install codium foliate git htop ripgrep sqlite3 python3 python3-pip python3-venv

# Python
python3 -m pip install --user -U pipx
pipx install uv uvx

# Others (manual) para garantir os mais recentes
# - Starship: https://starship.rs/
# - Zoxide: https://github.com/ajeetdsouza/zoxide
# - FZF: https://github.com/junegunn/fzf
# - Eza: https://github.com/eza-community/eza
# - Bat: https://github.com/sharkdp/bat
# - Nerd Fonts (FiraCode)
```

### 2. Copiar configurações

```bash
# Bash
cp bash/.bashrc ~/.bashrc
cp bash/.bash_aliases ~/.bash_aliases

# Alacritty
mkdir -p ~/.config/alacritty
cp -r .config/alacritty/* ~/.config/alacritty/

# VSCodium
mkdir -p ~/.config/VSCodium/User
cp .config/VSCodium/User/settings.json ~/.config/VSCodium/User/

# Instalar extensões (VSCodium)
xargs -a vscodium-exts.txt codium --install-extension
```

### 3. Instalar pacotes Python

```bash
pipx install uv uvx
```

## Extensões VSCodium

- `catppuccin.catppuccin-vsc` - Tema
- `catppuccin.catppuccin-vsc-icons` - Ícones
- `catppuccin.catppuccin-vsc-pack` - Pack completo
- `charliermarsh.ruff` - Linter/Formatter Python
- `ms-python.python` - Suporte Python
- `ms-python.debugpy` - Debug Python
- `ms-python.vscode-python-envs` - Gerenciador ambientes

## Sincronizar de volta para o repo

```bash
./scripts/dots.sh
```

## Dependências Externas

| Ferramenta | Uso |
|------------|-----|
| `eza` | Substituto moderno do `ls` |
| `batcat` | Substituto moderno do `cat` |
| `ripgrep` | grep otimizado |
| `htop` | Monitor de sistema |
| `starship` | Prompt customizável |
| `zoxide` | cd inteligente |
| `fzf` | Fuzzy finder |

## Atalhos Bash

Ver `bash/.bash_aliases` para lista completa.

### Principais
- `ll`, `la`, `l1`, `lt` - Listar arquivos
- `..` - Voltar diretório
- `gs`, `ga`, `gc`, `gp`, `gl` - Git shortcuts
- `c` - Clear
- `reload` - Recarregar bashrc
