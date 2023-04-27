echo "enter filename : "
read fileName

for i in {1..5}
do
read -p " Enter $i Name : " newword
echo "$newword" >> $fileName
done

echo ""
echo "sorted elements : " 
sort $fileName

echo ""
echo "unsorted elements : "
cat $fileName
