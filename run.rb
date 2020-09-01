require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
raul = Manager.new("Raul", "webdev", 27)
antonio = Manager.new("Antonio", "QA", 100)

alex = Employee.new("Alex", 85000, raul)
marcus = Employee.new("Marcus", 81000, raul)
stephen = Employee.new("Stephen", 89000, antonio)
mike = Employee.new("Mike", 90000, antonio)


binding.pry
puts "done"
