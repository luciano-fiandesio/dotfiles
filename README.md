# Dotfiles and workspace configuration


## Install requirements

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

## Install brew formulas, casks and App Store apps

```
cd osx
./setup.sh
```

## Install terminal colors (based on [base16-shell](https://github.com/chriskempson/base16-shell)

```
./base16-shell/setup.sh
```


## Setup git

```
./git/setup.sh
```

## Setup nvim

```
.nvim/setup.sh
```

## dev

### java

Download and install JDK 8: <https://www.dropbox.com/s/c2qk8vfa8gd3khj/jdk-8u251-macosx-x64.dmg?dl=0>


### sdkman

```
curl -s "https://get.sdkman.io?rcupdate=false" | bash
```

### postgresql

Postgresapp

Download and install: <https://github.com/PostgresApp/PostgresApp/releases/download/v2.3.3e/Postgres-2.3.3e-10-11-12.dmg>
