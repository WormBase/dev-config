DIRS ?= $(shell git ls-tree --name-only -d HEAD)
LEIN_URL := https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
LEIN_BINARY := ${HOME}/.local/bin/lein

TARGET := ${HOME}
ifneq "${WB_DEV_CONFIG_HOME}" ""
TARGET := ${WB_DEV_CONFIG_HOME}
endif

STOW := @stow --verbose=1 -t ${TARGET}

define print-help
	$(if $(need-help),$(warning $1 -- $2))
endef

need-help := $(filter help,$(MAKECMDGOALS))

help: ; @echo $(if $(need-help),,Type \'$(MAKE)$(dash-f) help\' to get help)

.PHONY: install
install: $(call print-help,install,creates symlinks to setup dot-files)
	${STOW} ${DIRS}

.PHONY: re-install
re-install: $(call print-help,re-install,re-creates symlinks to setup dot-files)
	${STOW} -R ${DIRS}

.PHONY: uninstall
uninstall: $(call print-help,uninstall,unlinks dot-files)
	${STOW} -D ${DIRS}

.PHONY: preview-install
preview-install:  $(call print-help,preview-install,\
                    Preview "make install" effects)
	${STOW} --no ${DIRS}

.PHONY: install-lein
install-lein: $(call print-help,install-lein,installs leinigen)
	@curl -L ${LEIN_URL} -o ${LEIN_BINARY}
	@chmod u+x ${LEIN_BINARY}

