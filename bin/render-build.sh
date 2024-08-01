set -o errexit

bundle install
yarn install
#yarn build jsファイルをesbuildでバンドルしているため
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
#bundle exec rake db:migrate:reset