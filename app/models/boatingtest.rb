
class BoatingTest

    @@all = []
    attr_accessor :student, :bt_name, :bt_status, :instructor
        def initialize(student, bt_name, bt_status, instructor)
            @student = student
            @bt_name = bt_name
            @bt_status = bt_status
            @instructor = instructor
            @@all << self
        end
        def self.all
            @@all
        end
    end
    
    
    
    
    # `BoatingTest` class:
    ## * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    ## * `BoatingTest.all` returns an array of all boating tests
    
