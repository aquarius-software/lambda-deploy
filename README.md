# lambda-deploy-mac

macOS環境（ARM）でServerless FrameworkのプロジェクトをLambdaにデプロイするための、Dockerイメージを生成します。

## 背景
macOS（ARM）環境からLambdaにServerless Frameworkプロジェクトのデプロイを試みると、invalid ELF Headerエラーが発生し、デプロイに失敗してしまいます。invalid ELF Headerエラーというのは、端的に述べるとOS環境の違いに起因するエラーです。そのため、macOS環境からLambdaにデプロイするために、DockerでAmazon Linuxのイメージを作成する必要があります。

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
ターミナルで以下のコマンドを実行すると、Amazon Linuxに必要なソフトウェアがインストールされたDockerイメージが作成されます。

`docker-compose up --build`


