propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
    attr_accessor :nombre, :raza, :color
    def initialize(dog)
        @dog = dog
        @nombre = dog[:nombre]
        @raza = dog[:raza]
        @color = dog[:color]
    end

    def ladrar
        print "#{@nombre} está ladrando!"
    end
end

dog1 = Dog.new propiedades
dog1.ladrar
