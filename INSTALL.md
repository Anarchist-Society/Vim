# Guía de instalación

## 1. Estructura de directorios

```zsh
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
```

## 2. Archivo de configuración

Copia el contenido de `vimrc.vim` a `~/.vimrc`:

```zsh
cp vimrc.vim ~/.vimrc
```

## 3. vim-plug

```zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 4. Node.js y npm

```zsh
sudo pacman -S nodejs npm
```

Verifica:

```zsh
node --version   # >= 16 y <= 24
npm --version
```

## 5. Instalar plugins de Vim

Abre Vim y ejecuta:

```vim
:PlugInstall
```

## 6. Extensiones de coc-nvim

Dentro de Vim:

```vim
:CocInstall coc-json coc-html coc-css coc-tsserver coc-prettier coc-emmet
```

## 7. Verificar

Abre Vim y comprueba que no hay errores con:

```vim
:CocInfo
:CheckHealth
```
