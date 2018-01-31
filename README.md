# Decimal to Roman Numerals Converter

By: Whil Piavis
1/31/2017

This converter converts decimal numbers, 1 - 3000 to Roman Numerals.
Unfortunate, for both the Romans and Science they did not have 0,
and never bothered with numbers over 3000.  Not quite sure that last statement
is true, but it is entertaining.

## Functions 

### def check_number(number)
Don't assume that we are receiving integer input.
Return true if we received a valid number, else 
Return an error statement.

Because string.to_i converts all non-float / non-integer strings
to 0, we check against a 0 input before converting the string to an integer.

### def convert(number)
Convert the decimal number to Roman numerals.
Returns the Roman numeral as a string.

### def convert_numerals(num, base, fives, tens)
Converts a number into roman numerals based on its
decimal position and the corresponding Roman representation.
Takes in the number, the base value, the "fives"
value, and the "tens" value.
Eg. for the hundreds digits, the base number is C for 100, the fives
value is D for 500, and the "tens" value is M for 1000. 

Looking at this in depth I think it would be possible to break the 
different place values represented in a Decimal system further into 
fives values. However, I've tried to keep this as concise as possible
and done in under an hour.  Therefore instead of trying to break the 
problem down further to having a five count and the 'number - 5' representing
numbers greater than 5, I utilzied the Decimal based numbers.

## Execution 
Instead of making a class or module for re-usability, I left this 
stand alone for simplicity.  It can be executed in the console with 

`ruby dec2rom.rb`

The input expects an integer between 1 and 3000.  Floats will be truncated.