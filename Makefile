setup:
	bin/setup

install:
	bundle install --path vendor/bundle

start:
	bin/rails s
