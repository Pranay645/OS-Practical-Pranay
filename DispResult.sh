echo "Enter student name:"
read name

echo "Enter student register no:"
read regno

echo "Enter mark1:"
read mark1

echo "Enter mark2:"
read mark2

echo "Enter mark3:"
read mark3

echo "Enter mark4:"
read mark4

if ((mark1 >= 50 && mark2 >= 50 && mark3 >= 50 && mark4 >= 50))
then
    echo "Result for student $name (Reg No: $regno): Pass"
else
    echo "Result for student $name (Reg No: $regno): Fail"
fi
