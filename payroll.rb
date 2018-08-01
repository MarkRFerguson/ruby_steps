class Employee

    attr_reader :name, :salary

    def name=(name)
        if name ==""
            raise "Name can't be blank!"
        end
        @name = name
    end

    def salary=(salary)
        if salary < 1
            raise "Salary of #{salary} is not valid!"
        end
        @salary = salary
    end

    def initialize(name = "Anon", salary = 0.0)
        self.name = name
        self.salary = salary
    end

    def print_pay_stub
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Name: #{name}"
        puts "Pay for Period: £#{formatted_pay}"
    end

end

#kara_boyd = Employee.new
#kara_boyd.name = "Kara Boyd"
#kara_boyd.salary = 45000

#ben_weber = Employee.new
#ben_weber.name = "Ben Weber"
#ben_weber.salary = 50000

#amy_blake = Employee.new
#amy_blake.name = "Amy Blake"
#amy_blake.salary = 50000

#kara_boyd.print_pay_stub
#ben_weber.print_pay_stub
#amy_blake.print_pay_stub

Employee.new("Jane Doe", 50000).print_pay_stub



