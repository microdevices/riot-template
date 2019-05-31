#!/bin/sh

PORT=COM1

ARGUMENTS=$1
OPENOCD_CONFIG=lib/RIOT/boards/common/stm32f103c8/dist/openocd.cfg

checkArguments()
{
    if [[ -z "$ARGUMENTS" ]]
    then
        ARGUMENTS="all"
    fi

    case "${ARGUMENTS}" in
        "all" | "clean" | "flash" | "term");;
        *) echo "Command is not supported"; exit 1;;
    esac

    if [[ "$ARGUMENTS" == "flash" ]];
    then
        ARGUMENTS="OPENOCD_CONFIG=$OPENOCD_CONFIG flash"
    fi
}

info() {
    local COLOR_GREEN="\e[32m"
    local COLOR_RESET="\e[0m"

    echo -e ${COLOR_GREEN}"$1"${COLOR_RESET}
}

checkArguments;
info "make $ARGUMENTS"

make ${ARGUMENTS}
