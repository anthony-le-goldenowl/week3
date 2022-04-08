class SumOfMultiples
    attr_accessor :arr
    def initialize(*arr)
        @arr = arr
        @sum = 0
    end
    def to(num)
        k = 0
        for i in 1...num
            @arr.each do |e|
                if (i % e == 0 and i != k)
                    @sum += i
                    k = i
                end
            end
        end
        @sum
    end
end

puts SumOfMultiples.new(3).to(7)
