# Dotfiles and workspace configuration


### Install requirements

```
git clone https://github.com/luciano-fiandesio/dotfiles.git ~/.dotfiles
cd .dotfiles
git submodule init
git submodule update
```

Install `brew` and `fish` + `fisher`

```
~/.dotfiles/install.sh
```

Install `fisher` plugins

```
fisher update
```

### Install terminal colors (based on [base16-shell](https://github.com/chriskempson/base16-shell))

```
./base16-shell/setup.sh
```

Set the preferred colorscheme. E.g.

```
base16-gruvbox-dark-hard
```

### Setup fish shell configuration§		

```
./fish/setup.sh
```


### Install brew formulas, casks and App Store apps

```
cd osx
./setup.sh
```

### Setup git

```
./git/setup.sh
```

The `.gitconfig` file requires a local `.gitconfig.local` file, where sensitive info are stored.

This is a template:

```
[user]
  name = [name lastname]
  email = [email]
  useconfigonly = true
  signingkey = [sign key] 
[github]
  user = [github user] 
  token = [github token]
[commit]
  gpgSign = false
```


### Setup tmux

```
./tmux/setup.sh
```

### Setup nvim

Install LunarVim <https://www.lunarvim.org>


## Development

### asdf

Clone `asdf`, instructions here: <https://asdf-vm.com/guide/getting-started.html#_2-download-asdf>

Setup `direnv`

```
cd dev
./setup
```

### java

```
cd dev/java
./setup.sh
```

This will install `sdkman` <https://sdkman.io>.
Install the required JVM and tooling.

### python

```
cd dev/python
./setup.sh
```

### node

```
cd dev/node
./setup.sh
```
