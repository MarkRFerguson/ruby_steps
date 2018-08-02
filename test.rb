def take_this
    yield "present"
end

take_this do |thing|
    puts "do/end block got #{thing}"
end

take_this { |thing| puts "brackets block got #{thing}" }
