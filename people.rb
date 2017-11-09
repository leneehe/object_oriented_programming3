class Person
  def initialize(name)
    @name = name
  end

  def greetings
    return "Hi, my name is #{@name}."
  end
end


class Instructor < Person

  def initialize(name)
    super(name)
  end

  def teach
    return "Everything in Ruby is an Object"
  end

end

class Student < Person

  def initialize(name)
    super(name)
  end

  def learn
    return "I get it!"
  end

end

nadia = Instructor.new("Nadia")
puts nadia.greetings

chris = Student.new("Chris")
puts chris.greetings

puts nadia.teach
puts chris.learn

#student arguement not defined in method, Chris cannot be passed in Nadia's teaching.
puts nadia.teach(chris)
