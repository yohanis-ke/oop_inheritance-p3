class System
  @@bodies = []

  def initialize(name)
    @name = name
  end

  def add(body)
    @@bodies << body
  end

  def total_mass
      sum = 0
      @@bodies.each do |element|
        sum += element.mass_return
      end
      return sum
    end
    def show
        @@bodies
    end
end

class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
  def mass_return
    @mass
  end
end

class Planet < Body
  def initialize(day, year, name, mass, solar)
    super(name, mass)
    @day = day
    @year = year

  end
  def self.create(day, year, name, mass, solar)
    new_body = self.new(day, year, name, mass, solar)
    solar.add(new_body)
    return new_body
  end
end

class Star < Body
  def initialize(type, name, mass, solar)
    super(name, mass)
    @type = type
  end
  def self.create(type, name, mass, solar)
    new_body = Star.new(type, name, mass, solar)
    solar.add(new_body)
    return new_body
  end
end

class Moon < Body
  def initialize(month, planet, name, mass, solar)
    super(name, mass)
    @month = month
    @planet = planet
  end
  def self.create(month, planet, name, mass, solar)
    new_body = Moon.new(month, planet, name, mass, solar)
    solar.add(new_body)
    return new_body
  end
end
