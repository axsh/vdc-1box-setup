SHELL=/bin/bash

all:
	git submodule update --init --recursive
update:
	git submodule foreach git pull origin master

setup: update symlink

symlink:
	(cd vmapp-vdc-1box && for i in ../copy.*.txt ../postcopy.*.txt ../guestroot.local; do [ -L $$i ] || ln -fs $$i .; done)
