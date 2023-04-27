read -p "Enter Total unit :  " totalUnit
[[ $totalUnit =~ ^[0-9]+$ ]] || { echo "Enter a valid number"; continue; }

rupees=0.0

#totalUnit=`expr $totalUnit \* 1.0 | bc`

if (( totalUnit <= 100 ))
then
      
      rupees=0.75
      echo "Charge per unit is Rs. 0.75"
fi

if ((totalUnit >= 101 && totalUnit <= 200))
then
      
      rupees=1.50
      echo "Charge per unit is Rs. 1.50"
fi

if (( totalUnit >= 201))
then
      
      rupees=3.0
      echo "Charge per unit is Rs. 3"
fi

      bill=`expr "$totalUnit * $rupees" | bc -l`
      
echo "Total bill : " $bill
