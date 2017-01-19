class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    return "Hi my name is #{name}."
  end

end


class Student < Person

attr_reader :year

  def initialize(name, year)
    super(name)
    @year = year
  end

  def learn
    return "I get it!"
  end

end


class Instructor < Person

  def teach
    return "Everything in Ruby is an Object."
  end

end


chris = Instructor.new("chris") #why does this not get saved in IRB when the file is loaded?
christina = Student.new("christina",2)
