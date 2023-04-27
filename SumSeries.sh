echo "Enter the number of terms:"
read n

sum=0
fact=1

for ((i=1;i<=n;i++))
do
    fact=$((fact * i))
    term=$(echo "scale=4; $i/$fact" | bc)
    sum=$(echo "scale=4; $sum+$term" | bc)
done

echo "The sum of the series is: $sum"
