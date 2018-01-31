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

# Convert the decimal number to Roman numerals.
# Returns the Roman numeral as a string.
def convert(number)
	roman_string = ""
	# Break the number into thousands, hundreds, tens, and ones.
	thds = number / 1000
	hnds = number % 1000 / 100
	tens = number % 100 / 10
	ones = number % 10
	roman_string += convert_numerals(thds, "M", "Z", "Z")
	roman_string += convert_numerals(hnds, "C", "D", "M")
	roman_string += convert_numerals(tens, "X", "L", "C")
	roman_string += convert_numerals(ones, "I", "V", "X")
	roman_string
end

# Converts a number into roman numerals based on its
# decimal position and the corresponding Roman
# representation.
# Takes in the number, the base value, the "fives"
# value, and the "tens" value.
# Eg. for the hundreds digits, the base number is C for 100, the fives
# value is D for 500, and the "tens" value is M for 1000. 
def convert_numerals(num, base, fives, tens)
	if [0,1,2,3].include?(num)
		return base * num
	elsif 4 == num
		return base + fives
	elsif [5, 6, 7, 8].include?(num)
		return fives + base * (num - 5)
	else
		return base + tens
	end
end

# Begin program execution.

# Get input from user.
print "Please enter a number between 1 and 3000: "
number = gets()

# Check the number for validity.
response = check_number(number)

# Return an error message for 0 input, or integers greater than 3000.
if response != true
	puts response
else
	puts "#{number.chomp} converted to roman numerals is: #{convert(number.to_i)}"
end

