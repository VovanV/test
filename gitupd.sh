#!/bin/bash
SETCOLOR_SUCCESS="echo -en \\033[1;32m"
SETCOLOR_FAILURE="echo -en \\033[1;31m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"

echo -n "Введите комментарий к коммиту: "
read item

if [ "$item" == "" ]; then
    echo "Вы не ввели комментарий"
else

    echo "git add"
    git add .
    echo "git commit"
    git commit -m "$item"

    echo "git pull origin master"
    git pull origin master
    if [ $? -eq 0 ]; then
        $SETCOLOR_SUCCESS
        echo -n "$(tput hpa $(tput cols))$(tput cub 6)[OK]"
        $SETCOLOR_NORMAL
        echo
    else
        $SETCOLOR_FAILURE
        echo -n "$(tput hpa $(tput cols))$(tput cub 6)[fail]"
        $SETCOLOR_NORMAL
        echo
    fi
fi

echo -n "Вы хотите залить свои изменения? (y/n): "

read item2

if [ "$item2" == "y" ]; then

    echo "git push origin master"
    git push origin master
    if [ $? -eq 0 ]; then
        $SETCOLOR_SUCCESS
        echo -n "$(tput hpa $(tput cols))$(tput cub 6)[OK]"
        $SETCOLOR_NORMAL
        echo
    else
        $SETCOLOR_FAILURE
        echo -n "$(tput hpa $(tput cols))$(tput cub 6)[fail]"
        $SETCOLOR_NORMAL
        echo
    fi
fi