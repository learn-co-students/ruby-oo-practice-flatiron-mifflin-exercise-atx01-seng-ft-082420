class Manager
    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        self.class.all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |e| 
            e.manager == self
        end 
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.collect do |m| 
            m.department
        end 
    end

    def self.average_age
        (self.all.sum{|m| m.age}) / self.all.length
    end

    
end
