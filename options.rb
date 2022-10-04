require './student'
require './teacher'

def stud_opt
  puts 'Age:'
  age = gets.chomp.to_i
  puts 'Do you have parent permission[Y/N]:'
  parent_permission = gets.chomp.downcase
  puts 'Name:'
  name = gets.chomp
  student = Student.new(age, name, parent_permission: parent_permission)
  @people.push(student)
  puts 'Student created successfully!'
end

def teach_opt
  puts 'Age:'
  age = gets.chomp.to_i
  puts 'Name:'
  name = gets.chomp
  puts 'Specialization:'
  specialization = gets.chomp
  teacher = Teacher.new(age, specialization, name)
  @people.push(teacher)
  puts 'Teacher created successfully!'
end
