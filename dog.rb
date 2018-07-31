class Dog

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

dog = Dog.new
dog.name = "Daisy"
dog.age = 2
dog.report_age
dog.talk
dog.move("bed")
