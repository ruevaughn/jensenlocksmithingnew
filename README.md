# README

heroku git:remote -a jensenlocksmith
git push heroku master

Ruby 2.3.1
rbenv install 2.3.1 
rbenv local 2.3.1

Annotation 
--
annotate --exclude tests,fixtures,factories,serializers

Install
--
http://postgresapp.com/
gem install pg -v '0.18.4' -- --with-pg-config="/Applications/Postgres.app/Contents/Versions/latest/bin/pg_config"

gem install bundler -v "~>1.0"
bundle _1.17.3_

DB
-- 
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
