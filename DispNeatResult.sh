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
    result="Pass"
else
    result="Fail"
fi

# Print the result in a neat format
echo "=========================================="
echo "               STUDENT RESULT              "
echo "=========================================="
echo "Name:        $name"
echo "Reg No:      $regno"
echo "------------------------------------------"
echo "Subject 1:   $mark1"
echo "Subject 2:   $mark2"
echo "Subject 3:   $mark3"
echo "Subject 4:   $mark4"
echo "------------------------------------------"
echo "Result:      $result"
echo "=========================================="
