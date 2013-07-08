SHELL=/bin/bash

all:
	git submodule update --init --recursive
update:
	git submodule foreach git pull origin master

setup: update symlink vmbuilder

symlink:
	(cd vmapp-vdc-1box && for i in ../copy.*.txt ../postcopy.*.txt ../guestroot.local; do [ -L $$i ] || ln -fs $$i .; done)
	(cd vmapp-vdc-1box/xexecscript.d && [ -L 99_xexecscript.local.d ] || ln -fs ../../xexecscript.local.d 99_xexecscript.local.d)

vmbuilder:
	(cd vmapp-vdc-1box && make)
