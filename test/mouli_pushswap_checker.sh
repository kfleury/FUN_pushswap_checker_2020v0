#!/usr/bin/env bash

## Var def
RED='\e[91m'
GREEN='\e[92m'
BLUE='\e[94m'
NC='\e[0m'
SCORE=0
TOTAL=0

## Option
[[ $1 = "-v" ]] && VERBOSE=1 || VERBOSE=0

## Help
if [[ $1 = "-h" ]]; then
    echo -e " # PUSHSWAP CHECKER HOME MOULI #\n"
    echo "Option:"
    echo "   -v    Display difference between your output and mouli output"
    echo -e "\nCredit:"
    echo "  Made by Episauce."
    exit
fi

function result()
{
    echo -e "\n---------------- RESULT ----------------"
    echo -e "${BLUE}Done${NC}:    ${TOTAL}"
    echo -e "${GREEN}Success${NC}: ${SCORE}"
    echo -e "${RED}Failed${NC}:  $(($TOTAL-$SCORE))"
    echo "print(f'Score:   {$SCORE/$TOTAL*100:.2f}%')" | python3
}

## Verbose version
function display_info()
{
    echo "-------------"
    echo "Got: "
    cat "$1"
    echo "Expected: "
    cat "$2"
}

## Test
function test()
{
    TOTAL=$(($TOTAL+1))
    echo -e "\nInput: [$1]"
    echo "$1" | ./pushswap_checker "$2" &> .my
    diff .my "$2" &> /dev/null
    # shellcheck disable=SC2181
    if [[ $? != 0 ]]; then
        echo -e "Result: ${RED}KO${NC}"
        if [ ${VERBOSE} -eq 1 ]; then
            display_info .my "$2"
        fi
    else
        echo -e "Result: ${GREEN}OK${NC}"
        SCORE=$(($SCORE+1))
    fi
    rm .my
}

######################################## TEST ###########################################
test "sa pb pb pb sa pa pa pa" "2 1 3 6 5 8"
result
