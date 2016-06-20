class SumOfMultiples
    def self.to(num)
        # multiples of 3 or 5 up to input number
        # return only unique
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
        # result_array.uniq
    end
end

# If we list all the natural numbers up to but not including 20 that are
# multiples of either 3 or 5, we get 3, 5, 6 and 9, 10, 12, 15, and 18.

# The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a given set of
# numbers. If no set of numbers is given, default to 3 and 5.