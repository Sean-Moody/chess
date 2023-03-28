require 'byebug'

class Employee

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        if boss
            @boss.employees << self
        end
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
        multiplier * total_employee_salary_sum
    end

    def total_employee_salary_sum
        
        count = 0 #  if employees.nil?
debugger
        self.employees.each do |emp|
            debugger
            if emp.is_a?(Manager)
                # debugger
                count += emp.total_employee_salary_sum
            else
                count += emp.salary
            end
        end
        count
    end

    def employee=(subordinate)
        if subordinate.is_a?(Employee)
            if !self.employees.include?(subordinate)
                employees << subordinate
            end
        end
    end

end

