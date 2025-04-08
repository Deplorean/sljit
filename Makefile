CONFIGURE		:= ./configure
CONFIGURE_ARGS		:=

GIT			:= git
MAKE			:= make

PROJECT_NAME		:= sljit
PROJECT_SOURCE		:= Sources/sljit

SWIFT			:= swift
SWIFT_ARGS	:= -v
SWIFT_BUILD_ARGS	:=
SWIFT_TESTING_ARGS	:=


configure:
	$(shell [[ -f $(CONFIGURE) ]] && pushd $(SLJIT_SOURCE) && $(CONFIGURE) $(CONFIGURE_ARGS) || echo "***** Project is not using autoconfigure. *****")

build:
	$(SWIFT) build $(SWIFT_ARGS) $(SWIFT_BUILD_ARGS)

test:
	$(SWIFT) test $(SWIFT_ARGS) $(SWIFT_TESTING_ARGS)

show-%-commands:
	$(MAKE) -C $(SLJIT_SOURCE) $< -n | grep 'CC' | sort

update:
	$(GIT) subtree --help

.PHONY: clean
clean:
	$(SWIFT) package clean
