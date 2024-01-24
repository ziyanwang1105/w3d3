
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
