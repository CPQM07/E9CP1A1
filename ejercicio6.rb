class Product
    def initialize(name, *price_size)
        @name = name
        @large = price_size[0].to_i
        @medium = price_size[1].to_i
        @small = price_size[2].to_i
        @xsmall = price_size[3].to_i
        #@size_prices = size_prices.map(&:to_i)
    end

    def average
        (@large + @medium + @small + @xsmall) / 4
    end 

    def new_catalog
        [@large, @medium, @small]
    end
    
    def to_s
        "#{@name}: #{@large}, #{@medium}, #{@small}\n"
    end 
end
  
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |product|
products_list << Product.new(*product.split(', '))
end

4.times do |iterator|
    print "Producto: #{products_list[iterator]}\n"
    print "Promedio: #{products_list[iterator].average}\n"
    print "Sin XS: #{products_list[iterator].new_catalog}\n"
    print "__________________________________________\n"
end

catalog = File.open('nuevo_catalogo', 'w+')
    products_list.each do |product|
        catalog.puts product.to_s
    end 
catalog.close