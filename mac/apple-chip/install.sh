#!/bin/zsh
#隠しフォルダーをfinderで見えるようにする
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# 基本構成
## Homebrewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$(whoami)/.zprofile
. /Users/$(whoami)/.zprofile

## Homebrewのアップデート
brew update

## masコマンドのインストール
brew install mas

## Ricty Diminishedのインストール
brew tap homebrew/cask-fonts
brew install font-ricty-diminished --cask

# mas-cliコマンド
# 各種MacAppStoreのアプリのインストール

# Slackをインストール
mas install 803453959

## masでインストールしたアプリの一覧を表示
mas list


# brewコマンド
## Docker Desktop for Macのインストール
## ※もしうまく行かない場合は下記コメントアウトのコマンドを実行後にdockerのインストールコマンドを実行
# brew update-reset && brew update
brew install --cask docker
open /Applications/Docker.app

## VSCodeのインストール
brew install --cask visual-studio-code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
source ~/.zshrc

## Google Chromeをインストール
brew install --cask google-chrome

# Notionをインストール
brew install --cask notion

## App Cleanerをインストール
brew install --cask appcleaner

## DBeaver Communityをインストール
brew install --cask dbeaver-community

## Minikube on M1 Macのインストール
softwareupdate --install-rosetta --agree-to-license
brew install kubectl
brew install minikube

## Helmのインストール
brew install --cask helm

## Redis Desktop Manager
brew install --cask another-redis-desktop-manager

## jqのインストール
brew install jq

## k8sコマンド補完
echo "source <(kubectl completion zsh)" >> ~/.zshrc
source ~/.zshrc

## sternのインストール　
### k8s pod logツール
brew install stern

## k9sのインストール
### kubernetesクラスタをリッチなターミナルUIで操作するためのソフトウェア
brew install derailed/k9s/k9s

## kubectx / kubens のインストール
### 接続クラスタの変更やネームスペースのデフォルトを簡単に変更できるツール
brew install kubectx

## base64のインストール
### k8sのSecret作成時等でエンコードするときに利用する
brew install base64
