#array of all students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corloene",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

def print_header
  puts "The students of Villian Academy"
  puts "-------------"
end

#printing students names to screen
def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  #Print message of number of students
  puts "Overall, we have #{names.count} great students" #number of students
end

print_header
print(students)
print_footer(students)
