class Product
    attr_accessor :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def self.format_price(price)
        "#{price}円です"
    end

    def to_s
        result = Product.format_price(price)
        puts "name: #{name}, price: #{result}"
    end

    def culc_tax
        @price ** 2
    end

end




class DVD < Product
    attr_accessor :running_time

    def initialize(name, price, running_time)
        super(name, price)
        @running_time = running_time
    end

    def to_s
        result = Product.format_price(price)
        puts "name: #{name}, price: #{result}, running_time: #{running_time}"
    end

end

dvd = DVD.new("ipod", 10003, 120)
dvd.to_s
puts dvd.culc_tax
