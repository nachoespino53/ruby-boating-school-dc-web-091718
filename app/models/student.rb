class Student

    attr_reader :name
    attr_accessor :tests

    @@all = []
    def initialize(name)
      @name = name
      @tests = []
      @@all << self
    end

    def add_boating_test(test_name, status, instructor)
      boating_test = BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
      @@all.find do |student|
        student.name == first_name
      end
    end

    def self.all
      @@all
    end
end
