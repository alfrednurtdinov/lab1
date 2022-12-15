#!/bin/bash

# md5sum 

# case "$1" in
#     start_review)   start_review ;;
#     stop_review)    stop_review ;;
#     *) echo -e "Usage: `basename $0` {start_review|stop_review}"; exit 1
# esac



info () {
    cat template.tbl
}

description='\nhelp - справка
\nadd {filename} - добавление нового файла к запрету на удаление
\nremove {filename} - удаление файла из списка
\ninfo - посмотреть конфигурацию template.tbl
\n
'

distributor () {

    case "$1" in
    help)  echo -e $description;;
    info)  info;;
    make)    stop_review ;;
    *) echo -e "Указанная комнда не верна: "$1 ;
    esac

}


while true;
do
    read -p "Введите команду или введите help для справки: " fullname
    distributor $fullname
done




