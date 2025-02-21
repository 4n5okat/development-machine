# 開発環境構築リポジトリ

## 概要

開発環境の構築を行うためのスクリプト群で下記OSを対象とする。

- Mac OS

## 目次

- [開発環境構築リポジトリ](#開発環境構築リポジトリ)
  - [概要](#概要)
  - [目次](#目次)
  - [共通事項](#共通事項)
  - [事前準備](#事前準備)
  - [構築環境の詳細](#構築環境の詳細)
    - [Mac OS環境のインストールリスト](#mac-os環境のインストールリスト)
    - [ターミナルの変更](#ターミナルの変更)
  - [環境構築の進め方](#環境構築の進め方)
    - [Mac OS](#mac-os)
      - [Apple Chip](#apple-chip)
      - [Intel Chip](#intel-chip)
    - [Iceberg (ターミナルのプロファイルを変更)](#iceberg-ターミナルのプロファイルを変更)
      - [上記スクリプト実行後に下記手順で設定を変更していく。](#上記スクリプト実行後に下記手順で設定を変更していく)
      - [変更前](#変更前)
      - [変更後](#変更後)
  - [etc](#etc)
    - [FileZillaをインストール](#filezillaをインストール)
  - [参考リンク](#参考リンク)

<a id="anchor-1"></a>

## 共通事項

- Gitに関して
  - /docs/README.git.md

## 事前準備

- Mac : 特になし

## 構築環境の詳細

### Mac OS環境のインストールリスト

- apple chip
  - Slack
  - Notion
  - VSCode
  - DBeaver Community
  - Docker Desktop for Mac
  - Google Chrome
  - App Cleaner
  - minikube
  - kubectl
  - helm
- intel chip
  - Slack
  - Notion
  - VSCode
  - DBeaver Community
  - Docker Desktop for Mac
  - Google Chrome
  - App Cleaner
  - hyperkit
  - minikube
  - kubectl
  - helm

### ターミナルの変更

- 利用テーマ : Iceberg

<a id="anchor-4"></a>

## 環境構築の進め方

- 該当のOSディレクトリのスクリプトを実行する

### Mac OS

#### Apple Chip

~~~sh
# スクリプトが実行権限を持っていることを確認
chmod +x ./mac/apple-chip/install.sh
chmod +x ./mac/apple-chip/xcode-select.sh
chmod +x ./mac/apple-chip/change-prompt.sh
chmod +x ./mac/apple-chip/vscode.sh
chmod +x ./mac/apple-chip/create-ssh-key.sh
chmod +x ./mac/apple-chip/homebrew-auto-update.sh

# Xcode Command Line Tools のインストール
./mac/apple-chip/xcode-select.sh

# 環境構築メインスクリプト
./mac/apple-chip/install.sh

# VSCodeのプラグインのインストール
./mac/apple-chip/vscode.sh

# sshキーの作成
./mac/apple-chip/create-ssh-key.sh

# Homebrewのアップデートを自動化
./mac/apple-chip/homebrew-auto-update.sh
~~~

#### Intel Chip

~~~sh
# スクリプトが実行権限を持っていることを確認
chmod +x ./mac/intel-chip/install.sh
chmod +x ./mac/intel-chip/xcode-select.sh
chmod +x ./mac/intel-chip/change-prompt.sh
chmod +x ./mac/intel-chip/vscode.sh
chmod +x ./mac/intel-chip/create-ssh-key.sh
chmod +x ./mac/intel-chip/homebrew-auto-update.sh

# Xcode Command Line Tools のインストール
./mac/intel-chip/xcode-select.sh

# 環境構築メインスクリプト
./mac/intel-chip/install.sh

# VSCodeのプラグインのインストール
./mac/intel-chip/vscode.sh

# sshキーの作成
./mac/intel-chip/create-ssh-key.sh

# Homebrewのアップデートを自動化
./mac/intel-chip/homebrew-auto-update.sh
~~~

### Iceberg (ターミナルのプロファイルを変更)

ターミナルのテーマは手動で下記URLの下部にあるIceberg for macOSのダウンロードボタンからダウンロードしてターミナルの設定から変更、
[Iceberg](https://cocopon.github.io/iceberg.vim/)

そしてスクリプトでインストール済のRicty Diminishedにフォントを変更する。

~~~shell
# プロンプト変更
./mac/change_prompt.sh
~~~

#### 上記スクリプト実行後に下記手順で設定を変更していく。

1. zpreztorcファイルの編集

~~~sh
zstyle ':prezto:module:prompt' theme 'sorin'
~~~

をコメントアウトして下記を一行下に追加

~~~sh
# zstyle ':prezto:module:prompt' theme 'sorin'
zstyle ':prezto:module:prompt' theme 'pure'
~~~

2. そして下記の'prompt' \の上に'syntax-highlighting' \、'autosuggestions' \を追加する

#### 変更前

~~~sh
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt'
~~~

#### 変更後

~~~sh
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'syntax-highlighting' \
  'autosuggestions' \
  'prompt'
~~~

## etc

### FileZillaをインストール

FileZillaは現在brewからのインストールができなくなっているためインストールはは下記サイトから
[FileZilla](https://filezilla-project.org/download.php?type=client)

## 参考リンク

- [Minikube on M1 Mac](https://zenn.dev/sbk0716/articles/3e9a8e06ed1268)
- [Macでminikubeの基本的な使い方](https://zenn.dev/gekal/articles/minikube-on-mac-as-local-k8s-env)
- [Homebrew の アップデートを自動化](https://qiita.com/yuta3003/items/4dd8a65aa2301f937e3e)
