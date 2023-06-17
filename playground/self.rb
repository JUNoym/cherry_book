class Foo
    puts "クラス構文の直下のself: #{self}"

    def self.classFunction
        puts "クラスメソッド内のself: #{self}"
    end

    def baz
        puts "インスタンスメソッド内のself: #{self}"
    end

end

# Foo.classFunction
itc = Foo.new
itc.baz