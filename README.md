# Dotfiles

```
　 ﾊﾞﾝ　　　はよ
ﾊﾞﾝ (∩`･ω･) ﾊﾞﾝ はよ
　　/ ﾐつ/￣￣￣/
　￣￣＼/＿＿＿/
```

## セットアップ

### Xcodeをインストールする

- AppStoreからXcodeをインストールする
- `$ xcode-select --install`

### dotfilesをcloneする

```
$ cd ~/
$ git clone git@github.com:p1ch-jp/dotfiles.git
```

### Dotfiles用シェルスクリプトを実行する

```
$ cd dotfiles
$ sh setup.sh && source ~/.bash_profile
```

### OSXの設定用シェルスクリプトを実行する

```
$ sh osx.sh
```

### Homebrewをインストールする
お気に入りのパッケージやアプリをCaskで一括インストールする

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew bundle Brewfile
```

### シェルをzshに変更する
シェルをzshに変更して、preztoを導入する

```
$ sudo sh -c 'echo $(which zsh) >> /etc/shells'
$ chsh -s /usr/local/bin/zsh
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
$ setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

### Gitの設定をする
```
$ git config --global user.name "p1ch_jp"
$ git config --global user.email p1ch.jp@gmail.com
```

## 手動でインストールするアプリ

### Mac App Store
- 1password
- CotEditor
- Keynote
- Pixelmator
- Sketch3
- Slack
- Twitter
- Wunderlist

### Other
- GraffitiPot

## 参考
- [umi-uyura/dotfiles](https://github.com/umi-uyura/dotfiles)
- [ryonakae/dotfiles](https://github.com/ryonakae/dotfiles)