# lambda-deploy-mac

Serverless FrameworkのプロジェクトをLambdaにデプロイするための、Dockerイメージを生成します。想定しているローカル環境はmacOS（ARM）で、Dockerイメージの環境はAmazon Linuxです。

## 背景
macOS（ARM）環境からLambdaにServerless Frameworkプロジェクトのデプロイを試みましたが、invalid ELF Headerエラーが発生し、デプロイに失敗してしまいました。invalid ELF Headerエラーというのは、端的に述べるとOS環境の違いに起因するエラーです。そのため、macOS環境からLambdaにデプロイするために、DockerでLinux環境を作成する必要に迫られました。

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


