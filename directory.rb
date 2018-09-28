students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
def puts_header
    puts "The students of Villains Academy"
    puts "-------------"
end
def puts_names(names)
    names.each { |name|
  puts name  
}
end 
def puts_footer(names)
   puts "Overall, we have #{names.count} great students" 
end
puts_header
puts_names(students)
puts_footer(students)