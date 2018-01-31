# Decimal to Roman numeral converter.
# By: Whil Piavis
# 1/31/2017

# This converter converts decimal numbers, 1 - 3000 to Roman Numerals.
# Unfortunate, for both the Romans and Science they did not have 0,
# and never bothered with numbers over 3000.  Not sure that last statement
# is true, but it is entertaining.

# Functions

# Don't assume that we are receiving integer input.
# Return true if we received a valid number, else 
# Return an error statement.
def check_number(number)
	# Check to make sure the user did not input '0'.
	if number.chomp == "0"
		return "\nSadly, both for science and the Romans, they did not have a value for 0.\n\n"
	else
		# Any strings that are not numbers will be converted to 0. 
		# Floats will be converted to integers.
		number = number.to_i
		if number == 0
			return "\nSadly, we can only process integer numbers.\n\n"
		elsif number < 0
			return "\nSadly, the Romans had no interest in negative numbers.\n\n"
		elsif number > 3000 
			return "\nSadly, the Romans had no interest in numbers larger than 3000.\n\n"
		else
			return true
		end
	end
end

# Convert the decimal number to roman numerals.
def convert_to_roman_numerals(number)
	return "7"
end

# Begin code execution.

# Get input from user.
print "Please enter a number between 1 and 3000: "
number = gets()

# Check the number for validity.
response = check_number(number)

# Return an error message for 0 input, or integers greater than 3000.
if response != true
	puts response
else
	puts convert_to_roman_numerals(number)
end

