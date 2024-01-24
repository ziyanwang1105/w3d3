def sum_to(num)
    return nil if num < 1
    return 1 if num == 1
    num + sum_to(num - 1)
end

def add_numbers(nums_array)
    return nil if nums_array.length <1
    return nums_array[0] if nums_array.length ==1
    nums_array[0] + add_numbers(nums_array[1..-1])
end

def gamma_fnc(num)
    return nil if num < 1
    return 1 if num == 1
    (num-1) * gamma_fnc(num - 1)
end

def ice_cream_shop(flavors, favorite)

    return flavors[0] == favorite if flavors.length <= 1
    flavors[0] == favorite || ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(string)

    return string if string.length <= 1
    string[-1] + reverse(string[0...-1])
end

if __FILE__ == $PROGRAM_NAME

#   p sum_to(5)  # => returns 15
#   p sum_to(1)  # => returns 1
#   p sum_to(9)  # => returns 45
#   p sum_to(-8)  # => returns nil
#   p add_numbers([1,2,3,4]) # => returns 10
#   p add_numbers([3]) # => returns 3
#   p add_numbers([-80,34,7]) # => returns -39
#   p add_numbers([]) # => returns nil
#   p gamma_fnc(0)  # => returns nil
#   p gamma_fnc(1)  # => returns 1
#   p gamma_fnc(4)  # => returns 6
#   p gamma_fnc(8)  # => returns 5040
#   p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   p ice_cream_shop([], 'honey lavender')  # => returns false
    p reverse("house") # => "esuoh"
    p reverse("dog") # => "god"
    p reverse("atom") # => "mota"
    p reverse("q") # => "q"
    p reverse("id") # => "di"
    p reverse("") # => ""
end
