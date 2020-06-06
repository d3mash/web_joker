lint:
	bundle exec rubocop app lib spec
	bundle exec reek lib app spec
test:
	bundle exec rspec
setup:
	bundle
run:
	rails server
