#students = [{name: "Dr. Hannibal Lecter", cohort: :november}, {name: "Darth Vader", cohort: :november}, {name: "Nurse Ratched", cohort: :november}, {name: "Michael Corloene", cohort: :november}, {name: "Alex DeLarge", cohort: :november}, {name: "The Wicked Witch of the West", cohort: :november}, {name: "Terminator", cohort: :november}, {name: "Freddy Krueger", cohort: :november}, {name: "The Joker",  cohort: :november}, {name: "Joffrey Baratheon", cohort: :november}, {name: "Norman Bates", cohort: :november}]

def print_header
  heading = "The students of Villian Academy"
  puts heading
  puts "-------------".center(heading.length)
end

#printing students names to screen
def print_students_list(first_letter ='')
  if first_letter != ''
    k = 0
    while k < @students.length
    #students.each do |student|
      puts "#{@students[k][:name]} (#{@students[k][:cohort]} cohort)" #if (@students[k][:name][0].downcase == first_letter.downcase && @students[k][:name].length < 12)
      k += 1
    end
  else
    #k = 0
    #while k < @students.length
    @students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)}" #if (student[:name].length < 12)
      #k += 1
    end
  end
end

def print_footer
  #Print message of number of students
  puts "Overall, we have #{@students.count} great students" #number of students
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # empty array to store students info
  students = [] #not the same as @students
  name = gets.chomp
  # this promt repeats untill the name is empty
  while !name.empty? do
    # store student info as hash in the array
    puts "Please enter the cohort of the students"
    cohort_of_this_student = gets.chomp
    students << {name: name, cohort: :"#{cohort_of_this_student}"} #:november}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get name of next student
    name = gets.chomp
  end
  # returns the array of students info
  students
end

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

def print_menu
  #puts "Please select the operation you would like to perform"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def interactive_menu
  @students = Array.new
  loop do
    #print menu
    print_menu
    #get user selection
    selection = gets.chomp
    #3 running appropiate method
    case selection
    when "1"
      @students = input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts '"I don\'t know what you meant, try again"'
    end
  end
end

interactive_menu
