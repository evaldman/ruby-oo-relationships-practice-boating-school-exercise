
class Instructor
    @@all = []
    attr_reader :name
    
        def initialize(name_par)
        @name = name_par
        @@all << self
        end
        
        def self.all
            @@all
        end
        
        def boat_test
            #binding.pry
            BoatingTest.all.select{|boating_test| boating_test.instructor == self}
        end
        
        def passed_students
            #binding.pry
            self.boat_test.select{|boat| boat.bt_status == "passed"}
        end
       
        def pass_student(student_n, test_name)
            binding.pry
            one_student = Student.all.find{|student| student.name == student_n}
            #finds a student to match with our paramater
            one_test = BoatingTest.all.find{|test| test.bt_name == test_name}
            #finds a test to match with our parameter
            if #both match, rename bt_status to "passed"
                one_test && one_test.student.name == student_n
                    one_test.bt_status = "passed"
            else #if not make a new boating test
                BoatingTest.new(student_n, test_name, "passed", self)
            end
        end

        def fail_students(student, test_name)
            one_student = Student.all.find{|student| student.name == student_n}
            one_test = BoatingTest.all.find{|test| test.bt_name == test_name}
            if 
                one_test && one_test.student.name == student_n
                    one_test.bt_status = "failed"
            else 
                BoatingTest.new(student_n, test_name, "failed", self)
            
            end
        end
        def all_students
            #binding.pry
            self.boat_test.map {|boat| boat.student}
        end
    end
    
    
    
    
    
    
    
    # <!-- `Instructor` class:
    ## * initialize with a name
    ## * `Instructor.all` should return all instructors
    ## * `Instructor#passed_students` should return an array of students who passed a boating test with this specific instructor.
    # * `Instructor#pass_student` should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
    # * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
    ## * `Instructor#all_students` should return an array of students who took a boating test with this specific instructor.  -->