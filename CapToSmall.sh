# Display the menu options
echo "1. Convert all capital letters to small case"
echo "2. Convert all small case letters to capital case"
echo "Enter your choice:"

# Read the user's choice
read choice

# Prompt the user to enter the file name
echo "Enter the name of the file:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]
then
    echo "File not found!"
    exit 1
fi

# Perform the selected conversion
case $choice in
   

 1) # Convert all capital letters to small case
        tr '[:upper:]' '[:lower:]' < "$filename" > "${filename}_smallcase"
        echo "All capital letters in $filename converted to small case and saved to ${filename}_smallcase"
        ;;
    

2) # Convert all small case letters to capital case
        tr '[:lower:]' '[:upper:]' < "$filename" > "${filename}_capitalcase"
        echo "All small case letters in $filename converted to capital case and saved to ${filename}_capitalcase"
        ;;
    *) # Invalid choice
        echo "Invalid choice!"
        exit 1
        ;;
esac
