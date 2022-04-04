class Person
  def initialize name, dob
    @name = name
    @dob = dob
  end

  def age
    Integer((Time.now - @dob) / (365 * 24 * 60 * 60))
  end

  def introduce_yourself
    puts "Hey, I'm #{@name} and I'm #{age} years old.\n"
  end
end

class Student < Person
  def initialize name, dob, school
    super name, dob
    @school = school
  end

  def introduce_yourself
    puts "My name is #{@name} My class is '#{@school}'. \n"
  end
end

person = Student.new("Hoang", Time.new(2001, 10, 22), "UIT")
puts person.age
person.introduce_yourself