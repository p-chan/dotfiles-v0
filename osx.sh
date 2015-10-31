#!/bin/sh

#
# Global
#

# 拡張子を常に表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# メニューバーを隠す
defaults write NSGlobalDomain _HIHideMenuBar -bool true

#
# Menubar
#

# バッテリー残量を％表記に
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# 日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）
defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss"


#
# Dock
#

# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockから全てのアプリを外す
efaults write com.apple.dock persistent-apps -array

# 設定反映
killall Dock


#
# Mission Control
#

# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# 右上 → Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0

# 左下 → デスクトップ
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0

#
# Finder
#

# 新しいウィンドウでデフォルトでホームフォルダを開く
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# デフォルトはカラムビュー表示
defaults write com.apple.finder FXPreferredViewStyle clmv

# デスクトップ上にアイコンを表示しない
defaults write com.apple.finder CreateDesktop -boolean false

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# Quick Look上でテキストの選択を可能に
defaults write com.apple.finder QLEnableTextSelection -bool true

# 「ライブラリ」を常に表示
chflags nohidden ~/Library

# 不可視ファイルを表示
defaults write com.apple.finder AppleShowAllFiles YES

# Finder再起動して設定を反映
killall Finder


#
# Trackpad
#

#
# MagicMouce
#

#
# Safari
#

# 開発メニューを表示
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey

#
# Screen Capture
#

# キャプチャの保存形式をJPGにする
defaults write com.apple.screencapture type -string "jpg"

# キャプチャの保存場所を変更
defaults write com.apple.screencapture location ~/Pictures

# キャプチャのプレフィックスを変更
defaults write com.apple.screencapture name "SS_"

# キャプチャに影を付けない
defaults write com.apple.screencapture disable-shadow -boolean true

# 設定を反映
killall SystemUIServer