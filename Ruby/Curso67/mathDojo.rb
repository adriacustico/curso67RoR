class MathDojo
    # tu codigo aqui
    attr_accessor :num
    def initialize *num

        @num = num
        @resultado = 0
    end

    def add *num 
        puts num
        @resultado = @resultado + num.sum
        return self
    end

    def subtract *num
        @resultado = @resultado - num.sum
        return self
    end

    def result
        puts @resultado
    end
end

#desafio1 = MathDojo.new.add(2).add(2, 5.5).subtract(3, 2).result # => 4
desafio2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15