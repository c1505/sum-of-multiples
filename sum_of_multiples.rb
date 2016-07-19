class SumOfMultiples
    attr_accessor :result_array

    def initialize(*factors)
    		@factors = factors
        @result_array = []
    end

    def to(limit)
    		@factors.each do |arg|
    			multiples(arg, limit)
    		end
        result = result_array.uniq.reduce(:+)
        result ? result : 0
    end
  
    def multiples(factor, limit)
        multiplier = 1
        while (factor * multiplier) < limit
            result_array << factor * multiplier
            multiplier += 1
        end
    end
end