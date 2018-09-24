class BoatingTest

    attr_accessor :student, :status
    attr_reader :test_name, :instructor

    @@all = []
    def initialize(student, test_name, status, instructor)
      @student, @test_name, @status, @instructor = student, test_name, status, instructor
      @@all << self
    end

    def self.all
      @@all
    end

end
