# configs
configuration files

## VIM

### Dependencies for .vimrc
(fedora >27)```sudo dnf install cmake gcc-c++ make python3-devel```

Compiling YCM with semantic support for C-family languages:

```cd ~/.vim/bundle/YouCompleteMe```

```python3 install.py --clang-completer```

### After all run VIM then :PluginInstall
