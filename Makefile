.PHONY: all help clean cleanall

SHELL=/usr/bin/env bash -eo pipefail

.SECONDARY:

.SUFFIXES:

all:
	$(MAKE) -C cpp-v4-6e-severe-classes

help: ## Print help message
	@echo "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s : | sort)"

clean: ## Clean
	$(MAKE) -C cpp-v4-6e-severe-classes clean

cleanall: clean ## Clean all


