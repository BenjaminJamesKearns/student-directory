@students = []
def input_students
  puts "Please enter the names of the students" 
  puts "To finish, just hit return twice"
  name = gets.chomp 
  
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def puts_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def puts_students_list
  @students.each { |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  }
end 

def puts_footer
  puts "Overall, we have #{@students.count} great students" 
end

def interactive_menu
  loop do
    print_menu
    menu_options(gets.chomp) 
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  puts_header
  puts_students_list
  puts_footer
end

def menu_options(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "Please enter a number between 1 and 9"
  end
end
interactive_menu 