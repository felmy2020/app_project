#!/bin/sh

# DBマイグレーション
# if [ $DO_MIGRATION = "true" ]; then
#   bundle exec rake db:migrate RAILS_ENV=$RAILS_ENV
# fi

# whenever設定
# bundle exec whenever -i rails-app --update-crontab --set "path=/app/&environment=$RAILS_ENV"

# cronデーモン起動
# service cron start


# Pumaサーバー起動
rm -f /app/tmp/pids/server.pid
bundle exec puma -C config/puma.rb

# Unicornサーバー起動
# rm -f /var/run/unicorn.pid
# bundle exec unicorn -c config/unicorn.rb -E production
# bundle exec unicorn_rails --env $RAILS_ENV -c config/unicorn.rb
