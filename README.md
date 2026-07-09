# Mi configuración personal de Vim

Configuración minimalista pero potente de **Vim clásico**.

Esta primera versión está basada en la guía de configuración de vimrc de  **freeCodeCamp**:
[vimrc configuration guide - freeCodeCamp](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/)

## Requisitos previos
- Vim >= 8.2 (recomendado)
- curl instalado
- Node.js >= 16 y <= 24 (versión 25+ da errores con coc-nvim)
- npm (incluido con Node.js)
- Git

## Estructura de directorios que vamos a crear
```
.vim/
 ├── autoload/
 ├── backup/
 ├── colors/
 └── plugged/
```

Creamos la estructura:

```zsh
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
```

Creamos el fichero vimrc
```zsh
touch ~/.vimrc
```

## Plugins para vim
Para añadir plugin: yo voy a usar el gestor de plugins vim-plug [Instalar vim-plug (curl)](https://github.com/junegunn/vim-plug#installation), lo instalamos con el siguiente comando.

```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Node.js y npm

coc-nvim necesita Node.js y npm. Instálalos con pacman:

```zsh
sudo pacman -S nodejs npm
```

Verifica que las versiones sean correctas:

```zsh
node --version   # Debe ser >= 16 y <= 24
npm --version
```

> **Nota:** Si pacman instala Node.js 25+, usa `nvm` para instalar una versión LTS:
> ```zsh
> curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
> # Reinicia la terminal o ejecuta: source ~/.zshrc
> nvm install --lts
> nvm use --lts
> ```

## Extensiones de coc-nvim

Después de instalar los plugins con vim-plug, abre Vim y ejecuta:

```vim
:CocInstall coc-json coc-html coc-css coc-tsserver coc-prettier coc-emmet
```

O desde la terminal:

```zsh
npm install -g coc-json coc-html coc-css coc-tsserver coc-prettier coc-emmet
```

Las extensiones se guardan en `~/.config/coc/extensions/`.

## Instalación

1. Crear estructura de directorios
2. Copiar `vimrc.vim` a `~/.vimrc`
3. Instalar vim-plug
4. Instalar Node.js y npm
5. Abrir Vim y ejecutar `:PlugInstall`
6. Instalar extensiones coc-nvim con `:CocInstall ...`

La guía detallada está en **[INSTALL.md](INSTALL.md)**.
