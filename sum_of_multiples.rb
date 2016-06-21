# take arguments
class SumOfMultiples
    def initialize(num1, num2, num3 = nil)
        @num1 = num1
        @num2 = num2
        @num3 = num3
    end
    
    def self.to(num)
        multiplier = 1
        result_array = []
        while (3 * multiplier) < num
            result_array << 3 * multiplier
            multiplier += 1
        end
        multiplier = 1
        while (5 * multiplier) < num
            result_array << 5 * multiplier
            multiplier += 1
        end
        unless result_array.empty?
            result = result_array.uniq.reduce(:+)
        else
            result = 0
        end
        result
    end
    
    def to(num)
        multiplier = 1
        result_array = []
        while (@num1 * multiplier) < num
            result_array << @num1 * multiplier
            multiplier += 1
        end
        multiplier = 1
        while (@num2 * multiplier) < num
            result_array << @num2 * multiplier
            multiplier += 1
        end
        multiplier = 1
        if @num3
            while (@num3 * multiplier) < num
                result_array << @num3 * multiplier
                multiplier += 1
            end
        end
        
        unless result_array.empty?
            result = result_array.uniq.reduce(:+)
        else
            result = 0
        end
        result
    end
end


# 30, SumOfMultiples.new(4, 6).to(15)

# If we list all the natural numbers up to but not including 20 that are
# multiples of either 3 or 5, we get 3, 5, 6 and 9, 10, 12, 15, and 18.

# The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a given set of
# numbers. If no set of numbers is given, default to 3 and 5.