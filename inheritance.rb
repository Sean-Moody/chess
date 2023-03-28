class Employee

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        self.salary * multiplier
    end

    def boss=(boss)

    end

    attr_reader :salary, :boss, :name
end

class Manager < Employee

    def initialize
        @employees = []
        super
    end

    def bonus(multiplier)
        


    end

    def employee=(subordinate)
        
    end

end