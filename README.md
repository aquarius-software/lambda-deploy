# lambda-deploy

Serverless FrameworkのアプリをAWS LambdaにデプロイするためのDockerイメージを作成します。

## 環境
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
以下のコマンドを実行すると、Amazon Linuxに必要なソフトウェアがインストールされたDockerイメージが作成されます。

`docker-compose up --build`


