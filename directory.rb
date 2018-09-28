def input_students
  puts "Please enter the names of the students" 
  puts "To finish, just hit return twice"
  students = [] 
  name = gets.chomp 
  
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def puts_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def puts_names(names)
  names.each { |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  }
end 

def puts_footer(names)
  puts "Overall, we have #{names.count} great students" 
end

students = input_students 
puts_header
puts_names(students)
puts_footer(students)