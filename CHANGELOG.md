# CHANGELOG

## [2.0.4] - 2026-02-14
### Changed
- Switched default colorscheme to `atomic` for improved minimalism and better color consistency
### Added
- `let g:NERDTreeRespectWildIgnore = 1`: Makes NERDTree honor Vim's `wildignore` settings to hide build/output files consistently

## [2.0.3] - 2026-02-14
### Changed
- Remove line numbers (commented `set number` and `set relativenumber` for cleaner, more minimalistic interface)
- Update persistent undo
- Expanded `wildignore` to include `*.out`, `*.class`, `*.pdf`
### Added
- `AndrewRadev/tagalong.vim`: Sync opening and closing HTML/XML tags on rename (great for HTML/CSS editing)
- `wolandark/vim-live-server` (unused live reload plugin)
- `mattn/emmet-vim` (Emmet abbreviation expansion under testing/minimal config)

## [2.0.2] - 2025-12-03
### Added
- Enable hybrid line numbers ('number' + 'relativenumber')
- Add `~/.vimrc` bookmark in vim-startify
- Disable NERDTree line count to prevent breaking `tiagofumo/vim-nerdtree-syntax-highlight`

## [2.0.1] - 2025-11-30
### Added
- Auto-close Vim when only NERDTree remains in the only tab
- Auto-close current tab when NERDTree is the only window left in it
- Show file line counts in NERDTree (`NERDTreeFileLines = 1`)

## [2.0.0] - 2025-11-29
### Added
- Automatic vim-startify + NERDTree on startup when opening Vim without arguments
- `<LEADER>n` -> Toggle NERDTree
- `<LEADER>f` -> Reveal current file NERDTreeToggle (replaced by `<LEADER>n`)
- Update MAPPINGS section with new keybindings documentation

## [1.9.0] - 2025-11-27
### Added
- `tiagofumo/vim-nerdtree-syntax-highlight` → syntax highlighting in NERDTree
- `ryanoasis/vim-devicons` → file icons in NERDTree
- Leader key set to comma: `let mapleader = ","`
- Quick save shortcut: `,w` → `:w<ENTER>`

## [1.8.0] - 2025-11-26
### Added
- Add custom statusline  
- Replaced the default statusline with a clean, informative one that shows:  
- Full file path (%F)  
- Modified/Readonly flags (%M %R)  
- Filetype (%Y)  
- ASCII value (%b) and hex value (0x%B) of current character  
- Current row, column and percentage (%l,%c %p%%)

## [1.7.0] - 2025-11-26
### Added
- Disable vim-startify automatic directory change (`let g:startify_change_to_dir = 0`)

## [1.6.0] - 2025-11-20
### Added
- NERDTree now opens on the **right** side (`let g:NERDTreeWinPos = "right"`)
### Changed
- Switch default colorscheme to **CosmicLunarC5**
- Remove line numbers and relative numbers for a more minimal look
- Remove `wolandark/vim-live-server` (unnecessary browser-sync dependency)

## [1.5.0] - 2025-11-19
### Changed
- Complete refactor and reorganization of `.vimrc`
- Divided into 5 clearly commented sections for better readability and maintenance
- Grouped related settings and improved visual structure
- Moved plugin-specific mappings (NERDTree) to dedicated section
- Minor syntax optimizations (combined `set` commands where possible)

## [1.4.0] - 2025-11-19
### Added
- New plugin: 'gerardbm/vim-atomic'
- Set 'colorscheme atomic' as default theme (loads correctly after plugins)

## [1.3.1] - 2025-11-18
### Fixed
- Corrected NERDTree toggle keymap: changed `:ERDTreeToggle` → `:NERDTreeToggle`

## [1.3.0] - 2025-11-18
### Added
- Persistent undo:
- `undodir=~/.vim/backup`
- `undofile`
- `undoreload=10000`
- FileType-specific settings:
- HTML files: `shiftwidth=2`, `tabstop=2`, `expandtab`

## [1.2.0] - 2025-11-18
### Added
- Custom keymaps:
- Insert mode: `jj` → Esc
- Normal mode: `<SPACE>` → command mode, `o`/`O` → new line
- Window navigation: `<C-h/j/k/l>` → move between windows
- Window resizing: `<C-UP/DOWN/LEFT/RIGHT>`
- Plugin shortcuts: `<C-n>` → toggle NERDTree

## [1.1.0] - 2025-11-18
### Added
- Plugins:
- ALE (Asynchronous Lint Engine) for linting
- NERDTree for file navigation
- CoC.nvim (release branch) for autocompletion
- vim-startify for a startup screen
- vim-live-server for live reload development

## [1.0.0] - 2025-11-18
### Added
- Basic Vim settings (filetype, autoread)
- Visual enhancements (syntax highlighting, dark background, line numbers, relative numbers, scroll offset)
- Tab and indentation settings (shiftwidth, tabstop, expandtab)
- Backup settings disabled (noswapfile, nowritebackup)
- Search enhancements (incsearch, ignorecase, smartcase, showmatch, hlsearch)
- Command history configured (history=1000)
- Command-line completion enhancements (wildmenu, wildmode=list:longest,full)
- Ignored file types for completion (`*.docx, *.jpg, *.png, *.gif, *.pdf, *.pyc, *.exe, *.flv, *.img, *.xlsx, *.o`)
