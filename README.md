 # rails プロジェクト作成
 rails new . --force --database=mysql   --skip-bundle --skip-turbolinks --skip-test --api
 rails db:create
 rails db:migrate

docker-compose exec frontend /bin/bash
docker-compose run --rm backend bash
