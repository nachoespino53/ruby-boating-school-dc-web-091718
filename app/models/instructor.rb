class Instructor

    @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def pass_student(student_name, test_name)
      students = Student.all
      tests = BoatingTest.all

      student = students.find do |student|
        student.name == student_name
      end

      found_test = tests.find do |test_instance|
        test_instance.test_name == test_name && test_instance.student == student
      end

      fount_test.status = "pass"
    end

    def fail_student(student_name, test_name)
      students = Student.all
      tests = BoatingTest.all

      student = students.find do |student|
        student.name == student_name
      end
      found_test = tests.find do |test_instance|
        test_instance.test_name == test_name && test_instance.student == student
      end
      fount_test.status = "fail"
    end

    def self.student_grade_percentage(student_name)
      tests = BoatingTest.all

      passed = tests.select do |test|
        test.status == "pass"
      end

      passed / tests.length
    end
end
