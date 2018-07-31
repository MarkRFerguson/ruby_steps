class Animal

    attr_reader :name, :age

    def name=(value)
        if value == ""
            raise "Name can' be blank!"
        end
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age 0f #{value} isn't valid!"
        end
        @age = value
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end

    def talk
        puts "#{@name} says Bark!"
    end

    def report_age
        if @age < 2
            puts "#{@name} is #{@age} year old."
        elsif
            puts "#{@name} is #{@age} years old."
        end
    end
end


class Dog < Animal

    def to_s
        "#{@name} the dog, age #{age}"
    end
end

class Bird < Animal

    def talk
        puts "#{@name} says Chirp! Chirp!"
    end

end

class Cat < Animal

    def talk
        puts "#{@name} says Meow!"
    end

end

class Armadillo < Animal

    def move(destination)
        puts "#{@name} unrolls!"
        super
    end

end

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 3

rex = Dog.new
rex.name = "Rex"
rex.age = 5

puts lucy, rex



#whiskers = Cat.new
#whiskers.name = "Whiskers"
#fido = Dog.new
#fido.name = "Fido"
#polly = Bird.new
#polly.name = "Polly"
#dillon = Armadillo.new
#dillon.name = "Dillon"

#polly.age = 2
#polly.report_age
#fido.move("yard")
#whiskers.talk
#polly.talk
#dillon.move("burrow")


