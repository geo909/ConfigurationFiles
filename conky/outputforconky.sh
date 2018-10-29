#!/bin/sh

# Usage: sh outputforconky.sh {home, computer, school, waitingfor, agendas, calls}

TODOSHDIR=~/Dropbox/Applications/Application_Data/Todotxt #Last one is a directory

WRAPNUM=70

case $1 in
home)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @home | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@home\ //' | fmt -g $WRAPNUM --split-only
    ;;
computer)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @computer | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@computer\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
car)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @car | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/+errands\ //' -e 's/@car\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
school)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @school | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@school\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
calls)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @calls | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@calls\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
waitingfor)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @waitingfor | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@waitingfor\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
agendas)
    todo.sh -p -d $TODOSHDIR/todo.cfg list @agendas | head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/+gtd\ //' -e 's/@agendas\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
errands)
    todo.sh -p -d $TODOSHDIR/todo.cfg list errands| head -n -2 | sed -e 's/^..//' -e 's/^\ /\ ‣\ /' -e 's/[a-z1-9]*//' -e 's/+errands\ //' -e 's/#/\#\ /' | fmt -g $WRAPNUM --split-only
    ;;
workon)
    todo.sh -p -d $TODOSHDIR/todo.cfg list +workon | head -n -2 | sed -r 's/\x1B\[[0-9;]*[JKmsu]//g' | sed -e 's/^[0-9]\+//' -e 's/^\ /\ \ ‣\ /g' -e 's/^---//' -e 's/\ ---/\n/' -e 's/(A)/\${color Red}(A)\${color Grey}/' -e 's/(B)/\${color Orange}(B)\${color Grey}/' -e 's/(C)/\${color Brown}(C)\${color Grey}/' -e 's/[@+][a-z1-9]*//' 
    ;;
*)
    echo "you need to give an argument: home, computer, etc"
    ;;
esac

# Sed commands:
# First: Get rid of the first two numbers
# Second: Prepend each line with "-", todo-style
# Third: Strip the context or project
# Fourth: Escape "#" for conky to show
# fmt: Fold lines if they are more than -g .. characters

# For workon, the first sed command is in order to remove the color codes, which give trouble to conky.

