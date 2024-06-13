# lambda-deploy-mac

## 概要
macOS環境（ARM）からServerless FrameworkのプロジェクトをAWSにデプロイするための、Dockerイメージを生成するプロジェクトです。

## 背景
macOS（ARM）環境からAWSにServerless Frameworkプロジェクトのデプロイを試みたのですが、invalid ELF Headerエラーが発生し、デプロイに失敗してしまいました。invalid ELF Headerエラーというのは、端的に述べるとOS環境の違いに起因するエラーです。通常のプロジェクトであれば問題なかったのですが、今回デプロイしようとしたプロジェクトにはNode.jsバインディング（ネイティブ拡張）が含まれていたため、ライブラリのリンクの過程でinvalid ELF Headerエラーが発生した模様です。そのため、macOS環境からLambdaにデプロイするために、DockerでAmazon Linuxのイメージを作成する必要に迫られました。

## 生成される環境
- Amazon Linux
- Node.js 20

## インストールされるパッケージ
- git
- glibc-common
- glibc
- gcc-c++
- make
- vim-enhanced
- nodejs

## 実行方法
ターミナルで以下のコマンドを実行すると、Amazon Linux上に必要なソフトウェアがインストールされたDockerイメージが生成されます。

`docker-compose up --build`


