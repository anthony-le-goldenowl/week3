
class PrimeFactors
    def self.of(number)
        null = number
        arr = Array.new
        i = 2
        until null == 1 do
            if (null % i == 0)
                null = null / i
                arr.push(i)
            else
                i+=1
            end
        end
        puts "#{arr}"
    end
end

PrimeFactors.of(8)
