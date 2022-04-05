=begin 
Instructions
Instructions
Write a function to convert from normal numbers to Roman Numerals.

The Romans were a clever bunch. They conquered most of Europe and ruled it for hundreds of years. 
They invented concrete and straight roads and even bikinis. One thing they never discovered though was the number zero. 
This made writing and dating extensive histories of their exploits slightly more challenging, but the system of numbers they came up with is still in use 
today. 

The Romans wrote numbers using letters - I, V, X, L, C, D, M. 
(notice these letters have lots of straight lines and are hence easy to hack into stone tablets).

 1  => I
10  => X
 7  => VII

 There is no need to be able to convert numbers larger than about 3000. (The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero.

To see this in practice, consider the example of 1990.

In Roman numerals 1990 is MCMXC:

1000=M 900=CM 90=XC

2008 is written as MMVIII:

2000=MM 8=VIII

See also: http://www.novaroma.org/via_romana/numbers.html

=end 

def roman_numerals_units(number)
    case number
    when 1
        "I"
    when 2
        "II"
    when 3 
        "III"
    when 4
        "IV"
    when 5
        "V"
    when 6
        "VI" 
    when 7 
        "VII" 
    when 8 
        "VIII" 
    when 9 
        "IX"
    end
end

def roman_numerals_dozens(number)
    case number
    when 10
        "X" 
    when 20
        "XX" 
    when 30 
        "XXX"
    when 40 
        "XL" 
    when 50 
        "L" 
    when 60 
        "LX"
    when 70 
        "LXX" 
    when 80 
        "LXXX" 
    when 90 
        "XC" 
    end
end

def roman_numerals_hundreds(number)
    case number 
    when 100 
        "C"
    when 200 
        "CC"
    when 300 
        "CCC"
    when 400 
        "CD"
    when 500 
        "D"
    when 600 
        "DC"
    when 700 
        "DCC"
    when 800 
        "DCCC"
    when 900 
        "CM"
    end
end

def roman_numerals_thousands(number)
    case number
    when 1000
        "M"
    when 2000
        "MM"
    when 3000
        "MMM"
    when 4000
        "MV"
    when 5000
        "V"
    end
end



def roman_numerals(number)
    thousands = 0
    hundreds = 0
    dozens = 0
    units = 0 
    case number
    when 1..99
        dozens = (number / 10).to_i * 10
        units = (number % 10).to_i
        roman_numerals_dozens(dozens).to_s + roman_numerals_units(units).to_s
    when 100..999
        hundreds = (number / 100).to_i * 100
        dozens = ((number - hundreds).to_i / 10).to_i * 10
        units = number - hundreds - dozens
        roman_numerals_hundreds(hundreds).to_s + roman_numerals_dozens(dozens).to_s + roman_numerals_units(units).to_s
    when 1000..5000
        thousands = (number / 1000).to_i * 1000
        hundreds = ((number - thousands) / 100).to_i * 100
        dozens = ((number - thousands - hundreds).to_i / 10).to_i * 10
        units = number - thousands - hundreds - dozens
        roman_numerals_thousands(thousands).to_s + roman_numerals_hundreds(hundreds).to_s + roman_numerals_dozens(dozens).to_s + roman_numerals_units(units).to_s 
    end
end

puts roman_numerals(87)
puts roman_numerals(476)
puts roman_numerals(3982)


        