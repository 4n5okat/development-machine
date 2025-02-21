#!/bin/zsh
##################################
#
# SSHキーを自動で作成するスクリプト
# Mac (Intel ・ M1チップ) 両方に対応
##################################

# ファイル名の入力を求める
read "key_filename?RSA鍵のファイル名を入力してください: "

# 名前が空の場合はエラーを出して終了
if [[ -z "$key_filename" ]]; then
  echo "エラー: ファイル名が入力されていません。"
  exit 1
fi

# ~/.ssh ディレクトリが存在しない場合は作成
if [[ ! -d ~/.ssh ]]; then
  mkdir -p ~/.ssh
  chmod 700 ~/.ssh
fi

# すでに同名の鍵が存在する場合、上書きを確認
if [[ -f ~/.ssh/${key_filename} ]]; then
  read "overwrite?~/.ssh/${key_filename} はすでに存在します。上書きしますか? (y/n): "
  if [[ "$overwrite" != "y" ]]; then
    echo "作成を中止します。"
    exit 1
  fi
fi

# RSA鍵を生成 (Intel ・ M1 両方で同じ操作)
ssh-keygen -t rsa -f ~/.ssh/${key_filename}

# 鍵の生成が完了したうむを表示
echo "RSA鍵の生成が完了しました。"

# 生成された公開鍵の内容を表示
echo "生成された公開鍵:"
cat ~/.ssh/${key_filename}.pub
