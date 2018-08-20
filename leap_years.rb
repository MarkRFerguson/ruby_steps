puts "Enter Starting Year"
start_year = gets.chomp.to_i
puts "Enter Ending Year"
end_year = gets.chomp.to_i
puts "----------------"

def leap_year(year)
    return false unless year % 4 == 0
    return true unless year % 100 == 0 
    year % 400 == 0
end

leap_years = 0
current_year = start_year

while current_year != end_year + 1
    if leap_year(current_year) == true
        puts current_year
        leap_years += 1
    end

    current_year += 1

end

puts "----------------"
puts "There are #{leap_years} leap years between #{start_year} and #{current_year}"