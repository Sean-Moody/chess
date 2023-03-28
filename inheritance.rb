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

    def boss=(new_boss)
        new_boss.employees << self if new_boss != nil
        boss.employees - [self] if boss != nil
        boss = new_boss
    end

    attr_reader :salary, :boss, :name, :employees
end

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    def bonus(multiplier)
        
    end

    def employee=(subordinate)
        if subordinate.is_a?(Employee)
            if !self.employees.include?(subordinate)
                employees << subordinate
            end
        end
    end

end

