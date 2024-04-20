 # rails プロジェクト作成
 rails new . --force --database=mysql   --skip-bundle --skip-turbolinks --skip-test --api
 database.ymlの設定
 rails db:create
 rails generate scaffold Test name:string age:integer
 rails db:migrate

# テストデータ作成
rails console
Test.create(name: "John", age: 25)
Test.create(name: "Alice", age: 30)

docker-compose exec frontend /bin/bash
docker-compose run --rm backend bash
