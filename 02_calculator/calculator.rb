#write your code here
def add (a, b)
    return (a + b)
end

def subtract(a, b)
    return (a - b)
end


def sum(numbers)
    sum = 0
    numbers.each {|num| sum += num}
    return sum
end

def multiply(numbers)
    product = 1
    i = 0
    numbers.each {|num| product *= num}
    return product
end

def power(a, b)
    return (a ** b)
end


def factorial(number)
    product = 1
    i = 1
    while i <= number
        product *= i
        i += 1
    end
    return product
end
