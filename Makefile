all: install

sf=admin_bundle_demo/bin/console

install:
	rm -rf admin_bundle_demo
	make install-symfony


install-symfony:
	composer create-project symfony/framework-standard-edition --no-interaction admin_bundle_demo
	cd admin_bundle_demo && composer require lag/adminbundle:~0.3

run:
	$(sf) server:run
