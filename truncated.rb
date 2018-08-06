# Original way to open the file
# review_file = File.open("review.txt")
#   lines = review_file.readlines
# review_file.close

lines =[]

File.open("review.txt") do |review_file|
    lines = review_file.readlines
end

# Original way to find relevant lines
# relevant_lines = []
# 
# lines.each do |line|
#    if line.include?("Truncated")
#        relevant_lines << line
#    end
# end

def find_adjective(string)
    words = string.split(" ")
    index = words.find_index("is")
    words [index + 1]
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

puts relevant_lines

puts "-----------------------------------"

reviews = relevant_lines.reject { |line| line.include?("--") }

puts reviews

puts "-----------------------------------"

adjectives = reviews.map do |review| 
    adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end

puts adjectives


