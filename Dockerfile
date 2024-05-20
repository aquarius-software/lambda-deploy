# ベースイメージとしてAmazon Linuxを使用
FROM amazonlinux

# 必要なパッケージをインストール
RUN yum update -y && \
    yum install -y git && \
    yum install -y glibc-common glibc && \
    yum install -y make gcc-c++ && \
    yum install -y vim-enhanced && \
    curl -sL https://rpm.nodesource.com/setup_20.x | bash - && \
    yum install -y nodejs && \
    yum clean all

# Serverless Frameworkをグローバルにインストール
RUN npm install -g serverless

# 作業ディレクトリを設定
WORKDIR /app

# ポートを公開
EXPOSE 3000

# デフォルトのコマンドを指定（ここではシェルを起動）
CMD ["/bin/bash"]