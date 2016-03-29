# =========================================================================
#
#  BEG_HELP
#
#  The following build targets are available:
#
#  all (default):   Builds library
#  doxy:            Builds doxygen documentation for the wrapper
#  install:         Installs library to /usr/lib (must be su)
#  TAGS:            Create eTAGS
#  tags:            Create cTAGS
#  tests:           Build tests
#  pre:             Builds preprocessed files (parsed by the C preprocessor)
#  clean:           Cleans files created by all, doxy, tests and TAGS/tags targets.
#  help:            Print possible targets
#
#  END_HELP
#
#  2015 Alexandre Lopes
#
# =========================================================================

.PHONY: all clean doxy install pre TAGS tags tests

all:
	make -C src all

tests:
	make -C unit_tests all


DOXY_CFG_DIR        := doxygen
DOXY_CFG            := $(DOXY_CFG_DIR)/doxy.conf
DOXY_DIR            := doc

doxy:
# generate documentation for the wrapper
	( ( \
	cat $(DOXY_CFG); \
	echo "OUTPUT_DIRECTORY  = $(DOXY_DIR)/libtest";\
	echo "WARN_LOGFILE      = $(DOXY_DIR)/warnings.log";\
	echo "PROJECT_NAME      = \"Library name\""; \
	echo "INPUT             = src include doxygen/libtest"; \
	echo "PROJECT_BRIEF     = \" limbimaging C wrapper\" "; \
	echo "EXCLUDE_PATTERNS  = some_stuff_to_exclude.h"; \
	echo "GENERATE_LATEX    = YES"; \
	) | doxygen - ); \
	make -C $(DOXY_DIR)/libtest/latex
	(cp $(DOXY_DIR)/libtest/latex/refman.pdf $(DOXY_DIR)/libtest/dev_doc.pdf)

clean:
	- rm -rf doc/*
	make -C unit_tests clean
	make -C src clean

TAGS:
	make -C src TAGS

tags:
	make -C src tags

pre:
	make -C src pre
	make -C unit_tests pre

help:
	@cat ./Makefile | awk 'BEGIN {out = 0}; /^#  BEG_HELP/ {out = 0}; {if (out) {print $0}}; /^#  END_HELP/ {out = 1}' | sed -r "s/^\# *//g"

install:
# TBD
