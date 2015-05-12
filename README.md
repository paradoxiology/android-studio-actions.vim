android-studio-actions.vim
==========================

Inspired and 'copied' from [tokorom's xcode-actions.vim](https://github.com/tokorom/xcode-actions.vim)

Operate Android Studio from Vim

## Usage

- Build

```vim
:AstudioActionsBuild
```

- Run

```vim
:AstudioActionsRun
```

- Open current file

```vim
:AstudioActionsOpenFile
```

## Install

```
Plug 'paradoxiology/android-studio-actions.vim'
```

## Key mappings

```vim
nnoremap <silent> <Plug>(android-studio-actions-build)      :<C-u>AstudioActionsBuild<Return>
nnoremap <silent> <Plug>(android-studio-actions-run)        :<C-u>AstudioActionsRun<Return>
nnoremap <silent> <Plug>(android-studio-actions-openfile)   :<C-u>AstudioActionsOpenFile<Return>
```
