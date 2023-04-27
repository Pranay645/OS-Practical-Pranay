read -p "Enter FileName: " fileName

if [ -f "$fileName" ] 
then
    op=0
    echo "1 - Copy file"
    echo "2 - Edit file"
    echo "3 - Rename file"
    echo "4 - Delete file"
    echo "5 - Exit"

    while [ $op -lt 5 ]
    do 
    echo ""
    read -p "Select an option(1/2/3/4/5): " op

    if [ $op == 1 ]
    then 
        read -p "Enter the fileName to be copied in : " copyFileName
        cp $fileName $copyFileName
        echo "Copied sucessfully"
    fi 

    if [ $op == 2 ]
        then 
        read -p "Enter the text to append : " text
        echo "$text" >> $fileName
        echo "Edited sucessfully"
    fi
if [ $op == 3 ]
    then 
        read -p "Enter new fileName : " newFileName
        mv $fileName $newFileName
        echo "Renamed sucessfully"
    fi
    
    if [ $op == 4 ]
    then 
        rm $fileName
        echo "Delete sucessfully"
    fi
    done

else
 echo "File not found"
fi
