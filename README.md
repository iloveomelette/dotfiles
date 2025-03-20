# iloveomelette's dotfiles

It only targets macOS for now.

:construction: **This repository is under construction.** :construction:

## :wrench: <samp>Setup</samp>

### :sparkles: <samp>Install Xcode</samp>

If you have not yet installed Xcode, run the following commands.

```sh
sudo softwareupdate -i -a
xcode-select --install
```

### :rocket: <samp>Setup</samp>

#### 1. Automatic Installation

```sh
zsh -c "$(curl -s https://raw.githubusercontent.com/iloveomelette/dotfiles/master/bin/install.zsh)"
```

#### 2. VSCode Settings

**2-1. Open VSCode**

```sh
code
```

**2-2. Setup Extensions**

1. Open the command palette (`Cmd + Shift + P`), then open user settings and keyboard shortcuts.
2. Create `JSON` files.
3. Execute the following command.

```sh
ls -al ${HOME}/Library/Application\ Support/Code/User
// -> Confirm the existence of the settings.json and keybindings.json files and snippets directory.

make link-vscode
```

## :memo: <samp>Note</samp>

The installation process in the Makefile is tested on every push in this GitHub Action.

Please file an issue in this repo if there are errors.

## :tada: <samp>Special Thanks</samp>

- [webpro/dotfiles](https://github.com/webpro/dotfiles/tree/main)
- [Getting started with dotfiles](https://www.webpro.nl/articles/getting-started-with-dotfiles)
- [ようこそdotfilesの世界へ](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
- [dotfilesの管理を楽にする話](https://zenn.dev/tkomatsu/articles/d7d089acd29cfa4d57b4)
- [Macの環境をdotfilesでセットアップしてみた改](https://zenn.dev/tsukuboshi/articles/6e82aef942d9af)
