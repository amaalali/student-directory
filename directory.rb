#array of all students
students = [
  "Dr. Hannibal Lecter",
  "arth Vader",
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

#printing students names to screen
puts "The students of Villian Academy"
puts "-------------"
students.each do |student|
  puts student
end

#Print message of number of students
print "Overall, we have #{students.count} great students" #number of students
