class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash={})

    @name = student_hash[:name] || nil
    @location =  student_hash[:location] || nil
    @twitter = student_hash[:twitter] || nil
    @linkedin = student_hash[:linkedin] || nil
    @github = student_hash[:github] || nil
    @blog = student_hash[:blog] || nil
    @profile_quote = student_hash[:profile_quote] || nil
    @bio = student_hash[:bio] || nil
    @profile_url = student_hash[:profile_url] || nil

    @@all << self
  end

  def self.create_from_collection(students_array)

  #  binding.pry
    students_array.each do |ele|
      student = self.new
      student.name = ele[:name]
      student.location = ele[:location]
#      binding.pry
#      @@all << student
    end

  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |ele|


      self.bio = ele[:bio]
      self.twitter = ele[:twitter]
      self.blog = ele[:blog]
      self.github = ele[:github]
      self.profile_quote = ele[:profile_quote]
      self.linkedin = ele[:linkedin]
    end


  end

  def self.all
    @@all
  end
end
