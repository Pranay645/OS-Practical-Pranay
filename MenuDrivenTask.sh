while :
do

echo "enter your choice :"
echo "1 : enter sentence in a file"
echo "2 : find a word ina file"
echo "3 : quit"
echo ""
echo "select option : "

echo "number : "
read num

case $num in

"1")echo "enter filename :"
 read srcfile

 echo "enter the sentence : "
 read sentence

 echo "$sentence" >> $srcfile
 echo "your sentence is added in $srcfile"
 echo ""
;;

"2")echo "enter filename :"
 read filename

 echo "enter word :"
 read word
 
 echo "$str" >> $filename
 echo "word count = $(grep -o -i $word $filename | wc -l)"
 echo "" 

;;

"3")exit
;;
esac

done 
