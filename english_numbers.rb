def english_number(number)

    total_num = ""
    split_num = []


    singles = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    number = number.to_s

    if number.length = 1    
        total_num = singles[number-1]
    else
        split_num = number.split
        p split_num
        
    end

    

    puts total_num

end

english_number(17)