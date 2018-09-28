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

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp 
    case selection
    when "1"
      students = input_students
    when "2"
      puts_header
      puts_names(students)
      puts_footer(students)
    when "9"
      Exit
    else
      puts "Please enter a number between 1 and 9"
    end
  end
end
interactive_menu 