lines = []
index = 0
input = "A"

puts "Input as many random words as you want. Press Enter to exit."

while input != ""
    input = gets.chomp
    lines[index] = input
    index += 1
end

puts "---------------------"
puts "The alphabetical version of your words are:"
puts lines.sort
