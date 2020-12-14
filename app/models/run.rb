require 'pry'
require_relative 'models/boatingtest.rb'
require_relative 'models/instructor.rb'
require_relative 'models/student.rb'

stud1 = Student.new("Bobby")
stud2= Student.new("Timmy")
#--------
inst1= Instructor.new("Teddy")
inst2= Instructor.new("Freddy")
#--------
#(student, bt_name, bt_status, instructor)
boat1 = BoatingTest.new(stud1, "power steering 101", "passed", inst1)
boat2 = BoatingTest.new(stud2, "don't crash 101", "failed", inst2)
boat3 = BoatingTest.new(stud1, "wave crashing", "failed", inst1)
boat4 = BoatingTest.new(stud1, "power steering 102", "failed", inst2)



binding.pry
0
#-------------------
# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")
# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")
#--------------------
# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)