# =========================================================================
#
#  AUTHOR Alexandre Lopes
#
#  SHORT_DESCR
#  The following build targets are available
#
#  all (default):   Builds wrapper
#  pre          :   Builds preprocessor output (debugging)
#  TAGS:            Create eTAGS
#  tags:            Create cTAGS
#  clean            Cleans files
#
#
#############################################################################

.PHONY: all clean

TOP     = ..

INC_DIR = $(TOP)/include
LIB_DIR = $(TOP)/lib
SRC_DIR = $(TOP)/src
BIN_DIR = $(TOP)/bin
CC      = gcc
CFLAGS  = -g
OUT     = $(patsubst %.c, %.out, $(wildcard *.c))
PRE    := $(patsubst %.c,%.pre,$(wildcard *.c))

all: $(OUT)

%.out: %.c
	$(CC) $(CFLAGS) -Wl,-rpath,$(LIB_DIR) -I$(INC_DIR) -L$(LIB_DIR) $< -o $(BIN_DIR)/$@ -ltest

pre: $(PRE)

%.pre: %.c
	$(CC) -E $(CFLAGS) -Wl,-rpath,$(LIB_DIR) -I$(INC_DIR) -L$(LIB_DIR) $< -o $@ -ltest

TAGS:
	find . $(INC_DIR) $(SRC_DIR) -name "*.[chCH]" -print | etags -

tags:
	ctags -R . $(INC_DIR) $(SRC_DIR)

clean:
	- rm -rf *.o *.out *.pre $(BIN_DIR)/*.out
	- rm -rf TAGS tags
