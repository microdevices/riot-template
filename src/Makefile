# Name of application
APPLICATION = riot-template

# If no BOARD is found in the environment, use this default:
BOARD ?= bluepill

# Termonal
PORT ?= COM1

# This has to be the absolute path to the RIOT base directory:
RIOTBASE ?= $(CURDIR)/../lib/RIOT

# Bin directory
BINDIRBASE = $(CURDIR)/../build

# Uncomment these lines if you want to use platform support from external repositories:
#RIOTCPU ?= $(CURDIR)/../../../thirdparty_cpu
#RIOTBOARD ?= $(CURDIR)/../../../thirdparty_boards

# Uncomment this to enable scheduler statistics for ps:
#CFLAGS += -DSCHEDSTATISTICS

# If you want to use native with valgrind, you should recompile native
# with the target all-valgrind instead of all:
# make -B clean all-valgrind

# Comment this out to disable code in RIOT that does safety checking
# which is not needed in a production environment but helps in the
# development process:
DEVELHELP ?= 1

# Change this to 0 show compiler invocation lines by default:
QUIET ?= 1

# Features required
FEATURES_REQUIRED += cpp
FEATURES_REQUIRED += periph_gpio
FEATURES_REQUIRED += periph_timer

USEMODULE += xtimer

# If you want to add some extra flags when compile c++ files, add these flags
# to CXXEXFLAGS variable

CXXEXFLAGS += -std=gnu++11

include $(RIOTBASE)/Makefile.include