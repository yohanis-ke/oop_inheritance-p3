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
