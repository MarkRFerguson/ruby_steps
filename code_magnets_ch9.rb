module Curious
    def investigate(thing)
        puts "look at #{thing}"
    end
end

module Clumsy
    def break(thing)
        puts "knocks over #{thing}"
    end
end

class Monkey
    include Curious
    include Clumsy
end

bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.break("vase")


