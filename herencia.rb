#relate and make methods for passing the driver code
#superClass Vehicle
class Vehicle 
      attr_reader :number_of_wheels, :color, :age
      
      def age!
        @age
      end

      def number_of_wheels
        @number_of_wheels
      end

      def color
        @color
      end

end
#sub-Class Motorized <-- Vehicle
class Motorized < Vehicle
    attr_reader :has_motor, :tank_size, :refuel, :number_of_gears

    def has_motor
        @has_motor
    end

    def tank_size
        @tank_size
    end

    def refuel
        @refuel
    end

    def number_of_gears
        @number_of_gears
    end
end
#sub-Class of 'Motorized'
class Motorbike < Motorized
end
#sub-Class of 'Motorized'
class Car < Motorized
end
#sub-Class of 'Vehicle'
class Bicycle < Vehicle
    #method initialize 'age byicycle'
    def initialize(num)
        @age = num
    end
end
#sub-Class of 'Vehicle'
class Skateboard < Vehicle
end

#Driver Code
moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end