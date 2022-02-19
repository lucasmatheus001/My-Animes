ARG=
run:
	foreman start -f Procfile.dev

start:
	rails s -b 0.0.0.0 -p 3000 -e development

install:
	bundle install; yarn install

setup_db:
	rails db:drop db:create db:migrate

seed:
	rails db:seed