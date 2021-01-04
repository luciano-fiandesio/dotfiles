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

```
./nvim/setup.sh
```

## Development

### java

Download and install JDK 8: <https://www.dropbox.com/s/c2qk8vfa8gd3khj/jdk-8u251-macosx-x64.dmg?dl=0>


### python

https://opensource.com/article/19/5/python-3-default-mac

### sdkman

```
curl -s "https://get.sdkman.io?rcupdate=false" | bash
```

### postgresql

Postgresapp

Download and install: <https://github.com/PostgresApp/PostgresApp/releases/download/v2.3.3e/Postgres-2.3.3e-10-11-12.dmg>
