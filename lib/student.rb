class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)

    @name = nil || student_hash[:name]
    @location = nil || student_hash[:location]
    @twitter = nil ||student_hash[:twitter]
    @linkedin =nil || student_hash[:linkedin]
    @github =nil || student_hash[:github]
    @blog =nil || student_hash[:blog]
    @profile_quote =nil || student_hash[:profile_quote]
    @bio =nil || student_hash[:bio]
    @profile_url =nil || student_hash[:profile_url]

    @@all << self
  end

  def self.create_from_collection(students_array)
    student = self.new
    students_array.each do |ele|
      student.name = ele[:name]
      student.location = ele[:location]
      self.all << student
    end

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end
