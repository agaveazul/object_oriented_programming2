class System

  attr_reader :bodies, :num_planets, :num_moons, :num_stars

  def initialize
    @bodies = []
    @bodies_count = { Planet: 0, Star: 0, Moon: 0 }
  end

  def add(body_name)
    contains_body = false
    @bodies.each { |body|
        if body.name == body_name.name
        puts "This celestial body already exists."
        contained = true
        end
      }
    if contains_body == false
         @bodies << body_name
         @bodies_count[body_name.class.name.to_sym] += 1
    end
  end

    # name_counter = 0
    # @bodies.each do |body|
    # name_counter += 1 if body.name == body_name.name
    # end #is there a better way to do this
    #
    # if name_counter == 1
    #   return "This celestial body already exists."
    # else
    #   @bodies << body_name
    #   if body_name.class == Moon
    #     @num_moons += 1
    #   elsif body_name.class == Star
    #     @num_stars += 1
    #   elsif body_name.class == Planet
    #     @num_planets += 1
    #   else
    #     return "Does not work"
    #   end
    # end


  def total_mass

    total_mass = 0
    @bodies.each do |body| total_mass += body.mass end
    return "The total mass in the Solar System is #{total_mass}."

  end

end


class Body

attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end


end

class Planet < Body

attr_reader :num_planets

@@num_tester = 0

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
    @@num_tester += 1
  end

  def self.num_tester
    @@num_tester
  end

  def all(system_name)
    system_name.num_planets
  end

end

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

  def all(system_name)
    system_name.num_stars
  end

end

class Moon < Body


  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

  def all(system_name)
    system_name.num_moons
  end

end
