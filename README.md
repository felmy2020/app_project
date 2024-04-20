  # プロジェクト作成の権限変更
 - sudo chown -R raizen:raizen ./*

 # rails プロジェクト作成
 - rails new . --force --database=mysql   --skip-bundle --skip-turbolinks --skip-test --api
 - database.ymlの設定
 - .gitignore/.gitの削除を忘れない

 # 初めて本リポジトリをCloneした場合
  - rails db:create
  - rails generate scaffold Test name:string age:integer
  - rails db:migrate


# テストデータ作成
 - rails console
 - Test.create(name: "John", age: 25)
 - Test.create(name: "Alice", age: 30)

# WEBサーバー
- pumaで起動

# Dockerコマンド
 - docker-compose exec backend /bin/bash
 - docker-compose run --rm backend bash
 - docker system df
 - docker builder prune -f

# Vue.jsとRailsをAPI通信するために、Rails側に「CORS(Cross-Origin Resource Sharing)」を設定
 - gem 'rack-cors'
 - cors.rb → or

# DockerにおけるVue.jsビルド時の「vue-cli-service not found docker」原因
- ホットリロードを採用しているため、ホスト側とコンテナ側のソースをリンク設定していることが原因（- ./frontend:/app）
- 「node_modules」が随時上書きされてしまうため、vue-cliのパスが変更されている模様
- コンテナ側の「/app/node_modules」を専用のボリュームに指定してあげることで解決
```
volumes:
  - node_modules:/app/node_modules

volumes:
  mysql_data:
  node_modules:
```

# README
## エンジニアのため情報交換アプリ「SolQue」
### 概要
現在抱えている問題に対して、他のエンジニアから解決策を共有してもらうサービス
### コンセプト
一般的な問題ではなく、固有の環境における具体的なエラーに焦点を置き、それを解決するための情報共有の場を提供いたします。

### バージョン
- Ruby 2.6.5
- Ruby on Rails 5.2.4

### 機能一覧
- ログイン機能
- 質問投稿機能
- 回答投稿機能
- 画像投稿機能
- ユーザ詳細機能
- コメント機能
- 検索機能
- SNSログイン機能
- ページネーション機能
- 通知機能




### カタログ設計
https://docs.google.com/spreadsheets/d/1RORKOE7LjkuZtNduGLr4P83N6F7_XYsihgtAsPCP69M/edit?usp=sharing
### テーブル定義
https://docs.google.com/spreadsheets/d/1n9fnIdes-b_i6QXQrlwetSikkwHsVtbii_MTRGdcFmw/edit?usp=sharing
### ER図
https://docs.google.com/spreadsheets/d/1Bp-_ToB9k1EeAnKLl5F_QgCuU6Q0iICMnt5l6V611jw/edit?usp=sharing
### 画面遷移図
https://docs.google.com/spreadsheets/d/1L0Y-UCfi8451D2fZW3i5Lcq911zPcEhlVxODyE73ps4/edit?usp=sharing
### ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1V38j9zTdiUcvJfJWRBhaLpLQ4s3KdHGItiAczGYsvTA/edit?usp=sharing

### 使用予定Gem
- carrierwave
- minimagic
- kaminari
- ransack
- redcarpet
- slim-rails
- device
- omniauth-google-oauth2

### 就業タームから選択する技術
- device
- コメント機能

### カリキュラム外の技術
- slim-rails
- ransack
- redcarpet
