#write your code here
def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum (numbers)
    numbers.inject(0){|total, number| total+number}
end

def multiply (element)
    element.inject(1){|total, number| total*number}
end

def power (a, b)
    a ** b
end

def factorial (n)
    if n < 0
        return nil
    end

    value = 1
    while n > 0
        value = value * n
        n -= 1
    end

    return value 
end