# iloveomelette's dotfiles

It only targets macOS for now.

:construction: **This repository is under construction.** :construction:

## :wrench: <samp>Setup</samp>

### :sparkles: <samp>Sparkling fresh installation of macOS</samp>

If you have not yet installed Xcode, run the following commands.

```sh
sudo softwareupdate -i -a
xcode-select --install
```

### :rocket: <samp>Installing packages, system configuration</samp>

1. Clone manually into the desired location.

```sh
git clone https://github.com/iloveomelette/dotfiles.git ~/.dotfiles
```

2. Run the setup script.

```sh
cd ~/.dotfiles
make
```

The installation process in the Makefile is tested on every push in this GitHub Action.

Please file an issue in this repo if there are errors.

## :tada: <samp>Special Thanks</samp>

- [webpro/dotfiles](https://github.com/webpro/dotfiles/tree/main)
- [Getting started with dotfiles](https://www.webpro.nl/articles/getting-started-with-dotfiles)
- [ようこそdotfilesの世界へ](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
- [dotfilesの管理を楽にする話](https://zenn.dev/tkomatsu/articles/d7d089acd29cfa4d57b4)
- [Macの環境をdotfilesでセットアップしてみた改](https://zenn.dev/tsukuboshi/articles/6e82aef942d9af)
