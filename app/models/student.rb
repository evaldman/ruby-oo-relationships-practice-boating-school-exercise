class Student
    @@all = []
    attr_reader :name
    
        def initialize(first_name)
        @name = first_name
        @@all << self
        end
        
        def self.all
            @@all
        end
        def add_boating_test(bt_name, bt_status, instructort)
           #binding.pry
           BoatingTest.new(self, bt_name, bt_status, instructor)
        end
        def boat_test  #all_instructor helper
            #binding.pry
            BoatingTest.all.select{|boating_test| boating_test.student == self}
            #binding.pry
        end
        def all_instructors
            #binding.pry
            self.boat_test.map {|boat| boat.instructor}
        end
        def self.find_student (fname)
            #binding.pry
            #self.all.name
            #self.all.map{|man| man.name}
            
            self.all.select{|student| student.name == fname}
        end
        def grade_percentage
            #binding.pry
            all_tests = self.boat_test.map{|test| test.bt_status} #array of all the test for particular student
            passed_tests = all_tests.select{|test| test == "passed"} #array of all passed tests
            passed_tests.count.to_f / all_tests.count.to_f #counts everything in passed_test, and divides by count of all_tests

            
        
        end
end






# `Student` class:
## * should initialize with `first_name`
## * `Student.all` should return all of the student instances
## * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object). 
## * `Student#all_instructors` should return an array of instructors with whom this specific student took a boating test.
## * `Student.find_student` will take in a first name and output the student (Object) with that name
## * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)