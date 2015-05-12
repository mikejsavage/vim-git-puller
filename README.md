vim-git-puller (VGP) is a Vim plugin manager that you can understand.

Features
--------

VGP does:

- Installs plugins from GitHub
- Updates plugins from GitHub
- Fit on half a screen

VGP does not:

[vim-scripts]: https://github.com/vim-scripts

- Let you install plugins from anywhere but GitHub (protip: use the
  [vim-scripts][vim-scripts] repos)
- Let you choose tags or commits
- Install plugins in parallel


Usage
-----

1. Edit the `plugins` array at the top of `vgp.sh`.
2. Run `vgp.sh`
3. Put `source ~/.vim/plugins/rtp.vim` at the top of your `vimrc`
4. (Option) Run `vgp.sh` to update your plugins
