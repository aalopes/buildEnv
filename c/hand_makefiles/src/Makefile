# =========================================================================
#
#  all (default):   Builds library
#  pre          :   Builds preprocessor output (debugging)
#  TAGS:            Create eTAGS
#  tags:            Create cTAGS
#  clean            Cleans files
#
#  2015 Alexandre Lopes
# =========================================================================

.PHONY: all clean

TOP     = ..

NAME    = libtest
TARGET  = $(NAME).so
INC_DIR = $(TOP)/include
LIB_DIR = $(TOP)/lib
CC      = gcc
CFLAGS  = -fPIC -c -Wall -g
LDFLAGS = 
LD      = $(CC)
OBJ    := $(patsubst %.c,%.o,$(wildcard *.c))
PRE    := $(patsubst %.c,%.pre,$(wildcard *.c))

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) -shared $^ -o $(LIB_DIR)/$@ -L$(LIB_DIR) $(LD_FLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -I$(INC_DIR) -L$(LIB_DIR) $^ -o $@ $(LD_FLAGS)
	$(CC) -I$(INC_DIR) -L$(LIB_DIR) $(CFLAGS) $^ -o $@

pre: $(PRE)

%.pre: %.c
	$(CC) -E -I$(INC_DIR) -L$(LIB_DIR) $(CFLAGS) $^ -o $@

TAGS:
	find . $(INC_DIR) -name "*.[chCH]" -print | etags -

tags:
	ctags -R . $(INC_DIR)

clean:
	- rm -rf *.o *.pre $(LIB_DIR)/$(TARGET)
	- rm -rf TAGS tags
