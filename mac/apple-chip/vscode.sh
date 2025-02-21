#!/bin/zsh
code --install-extension akamud.vscode-theme-onedark
code --install-extension christian-kohler.path-intellisense
code --install-extension davidanson.vscode-markdownlint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension humao.rest-client
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension irongeek.vscode-env
code --install-extension mechatroner.rainbow-csv
code --install-extension mhutchie.git-graph
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.makefile-tools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension mutantdino.resourcemonitor
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension yzhang.markdown-all-in-one

# プラグインのインストールリストを表示
code --list-extensions | xargs -L 1 echo code --install-extension
