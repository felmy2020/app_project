# DBマイグレーション

if [ $DO_MIGRATION = "true" ]; then
  bundle exec rake db:migrate RAILS_ENV=$RAILS_ENV
fi

# whenever設定
bundle exec whenever -i rails-app --update-crontab --set "path=/app/&environment=$RAILS_ENV"

# cronデーモン起動
service cron start

# ログファイル作成
touch $LOG_PATH

# Unicornサーバー起動
rm -f /var/run/unicorn.pid
bundle exec unicorn_rails --env $RAILS_ENV -c config/unicorn.rb | tail -F $LOG_PATH