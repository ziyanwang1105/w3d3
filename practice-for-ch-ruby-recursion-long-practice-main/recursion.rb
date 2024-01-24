
def range(min, max)

    return [] if max <= min
    res = []
    #range(1,5) [1,2,3,4]
    #[1,2,3] << 4
    #range(1,4)
    #[1,2] << 3
    #range(1,3)
    #range(1,2)
    #[1]
    #range(1, 1)
    #[]
    #min -max = 2
    #[1, 2]

    res += range(min, max -1) << max - 1
    res

end

# p range(1, 5)
# p range(3, 6)
# p range(6, 4)
# p range(1, 1)

#exp recursion 1

def exp_1(num, power)

    return 1 if power == 0
    num * exp_1(num, power -1)

end

# p exp_1(2, 0)
# p exp_1(3, 2)
# p exp_1(4, 1)

def exp_2(num, power)

    return 1 if power == 0
    return num if power == 1
    if power.odd?
        return num * (exp_2(num, (power - 1)/2))**2
    else
        return exp_2(num, power / 2)**2
    end
end

# p exp_2(2, 0) #1
# p exp_2(3, 2) #9
# p exp_2(4, 1) #4
# p exp_2(5, 3) #125
# p exp_1(2, 200000)
# p exp_2(2, 200000)


class Array 
# [1, 2, [3, 4]]
# [3, 4]
    def deep_dup
        res = []
        self.each do |ele|
            if ele.is_a?(Array) 
                res << ele.deep_dup
            else
                res << ele
            end
        end
        res 
    end
end

# p a = [1, 2, [3, 4]]
# b = a.deep_dup
# b[2] << "cat"
# p a
# p b

def fibonacci_array(n)
    res = []
    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2

    prev_array = fibonacci_array(n-1)
    res += prev_array
    res << prev_array[-1] + prev_array[-2]
    res
end

# p fibonacci_array(3)
# p fibonacci_array(5)
# p fibonacci_array(0)
# p fibonacci_array(1)
# p fibonacci_array(30)

def bsearch(array, target) # [1, 2, 3, 4, 5], 5

    midpoint = array.length / 2 # mid = index 2

    return midpoint if array[midpoint] == target #3 != 5

    #bsearch [1,2], 2 (less than)
    #bsearch [4,5], 5 (more than) => 1  midpoint = 1
    #bsearch [4], 4 = > 0 mid = 0
    midpoint + bsearch() if more than #add 1 per recursion if looking in upper half
    
end

#return the index of target
#assume array is already sorted..
#base case is when the ele @ midpoint is equal to target
#return value is half the length of array
#length = 5 => midpoint = length / 2
#length = 4 => midpoint = length / 2
