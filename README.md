# ✅ 本リポジトリについて

- 本リポジトリは、「Docker」+「Rails」+「Vuejs」+「Nginx」の環境をテンプレート化-を目的として作成しました。
- 本リポジトリを利用したい方は、「deveropment」ブランチをご使用ください。

<br>

# ✅ 初めて本リポジトリをCloneした場合、DBを作成する
  - docker-compose run --rm backend bash
  - rails db:create
  - rails db:migrate

## ⏭ テストデータ作成
 - rails console
 - Test.create(name: "John", age: 25)
 - Test.create(name: "Alice", age: 30)

<br>

 # ✅ rails プロジェクト作成した手手順
 - docker-compose run --rm backend bash
 - rails new . --force --database=mysql   --skip-bundle --skip-turbolinks --skip-test --api
 - database.ymlの設定
 - rails db:create
 - rails generate scaffold Test name:string age:integer
 - rails db:migrate
 - .gitignore/.gitの削除を忘れない

<br>

# ✅ アプリケーションサーバー
- pumaで起動（Unicornは不採用）

<br>

# ✅ Dockerコマンド
 - docker-compose exec backend /bin/bash
 - docker-compose run --rm backend bash
 - docker system df
 - docker builder prune -f

<br>

# ✅ Vue.jsとRailsをAPI通信するために、Rails側に「CORS(Cross-Origin Resource Sharing)」を設定
 - gem 'rack-cors'
 - cors.rb → or

<br>

# ✅ DockerにおけるVue.jsビルド時の「vue-cli-service not found docker」原因
- ホットリロードを採用しているため、ホスト側とコンテナ側のソースをリンク設定していることが原因（- ./frontend:/app）
- 「node_modules」が随時上書きされてしまうため、vue-cliのパスが変更されている模様
- コンテナ側の「/app/node_modules」を専用のボリュームに指定してあげることで、リンクの上書きさせないことで解決
```
volumes:
  - node_modules:/app/node_modules

volumes:
  mysql_data:
  node_modules:
```

<br>

# ✅ プロジェクト作成の権限変更
 - sudo chown -R raizen:raizen ./*
