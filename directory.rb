
#array of all students
#students = [
#  {name: "Dr. Hannibal Lecter", cohort: :november},
#  {name: "Darth Vader", cohort: :november},
#  {name: "Nurse Ratched", cohort: :november},
#  {name: "Michael Corloene", cohort: :november},
#  {name: "Alex DeLarge", cohort: :november},
#  {name: "The Wicked Witch of the West", cohort: :november},
#  {name: "Terminator", cohort: :november},
#  {name: "Freddy Krueger", cohort: :november},
#  {name: "The Joker",  cohort: :november},
#  {name: "Joffrey Baratheon", cohort: :november},
#  {name: "Norman Bates", cohort: :november}
#]

students = [{name: "Dr. Hannibal Lecter", cohort: :november}, {name: "Darth Vader", cohort: :november}, {name: "Nurse Ratched", cohort: :november}, {name: "Michael Corloene", cohort: :november}, {name: "Alex DeLarge", cohort: :november}, {name: "The Wicked Witch of the West", cohort: :november}, {name: "Terminator", cohort: :november}, {name: "Freddy Krueger", cohort: :november}, {name: "The Joker",  cohort: :november}, {name: "Joffrey Baratheon", cohort: :november}, {name: "Norman Bates", cohort: :november}]

def print_header
  heading = "The students of Villian Academy"
  puts heading
  puts "-------------".center(heading.length)
end

#printing students names to screen
def print(students, first_letter)

  if first_letter != ''
    k = 0
    while k < students.length
    #students.each do |student|
      puts "#{students[k][:name]} (#{students[k][:cohort]} cohort)" if (students[k][:name][0].downcase == first_letter.downcase && students[k][:name].length < 12)
      k += 1
    end
  else
    #while k < students.length
    students.each do |student|
      #puts "#{students[k][:name]} (#{students[k][:cohort]} cohort)" if students[k][:name].length < 12
      puts "#{student[:name]} (#{student[:cohort]} cohort)}" if (student[:name].length < 12)
      #k += 1
    end
  end
end

def print_footer(names)
  #Print message of number of students
  puts "Overall, we have #{names.count} great students" #number of students
end

#print_header
#print(students)
#print_footer(students)


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # empty array to store students info
  students = []
  name = gets.chomp
  # this promt repeats untill the name is empty
  while !name.empty? do
    # store student info as hash in the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get name of next student
    name = gets.chomp
  end
  # returns the array of students info
  students
end

puts

def particular_first_letter
  puts 'Do you want the name of the student(s) to start with a particular letter?'
  first_letter = ''
  first_letter = gets.chomp.downcase
  if first_letter.length > 1
    puts 'Invalid input. Please type a single letter from A-Z'
    particular_first_letter
  end
  first_letter
end

#students = input_students
first_letter = particular_first_letter
print_header
print(students, first_letter)
print_footer(students)
