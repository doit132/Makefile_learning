ALL_CFILE_PATH := $(shell find $(PROJECT_ROOT_DIR) -type f -name "*.c" -exec dirname {} \; | sort -u)

EXCLUDE_CFILE_PATH =

ONLY_INCLUDE_CFILE_PATH := ./src/uart



EXCLUDE_CFILE_PATH = ./src
ifeq ($(strip $(EXCLUDE_CFILE_PATH)),)
	CFILE_PATH := $(ALL_CFILE_PATH)
else
	CFILE_PATH := $(shell echo $(ALL_CFILE_PATH) | tr ' ' '\n' | grep -v "$(EXCLUDE_CFILE_PATH)" | tr '\n' ' ')
endif

CFILE_PATH += $(ONLY_INCLUDE_CFILE_PATH)

all:
	@echo $(ALL_CFILE_PATH)
	@echo $(CFILE_PATH)
