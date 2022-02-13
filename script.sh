#!/bin/bash

echo "      c  -> will copy the file with new file having .cpy extension.
      m  -> will move the file name to old. prefix.
      d  -> will delete the diven file
      p  -> will change the permission of the file to read-omly for group and others
      "
echo "Give mode to execute"
read mode;
echo "Give filename"
read filename;

case $mode in
        "c")
                cp $filename $filename.cpy
        ;;

        "m")
                mv $filename old.$filename
        ;;

        "d")
                rm -f $filename
        ;;

        "p")
                chmod 444 $filename
        ;;

        "*")
                exit
        ;;
esac

