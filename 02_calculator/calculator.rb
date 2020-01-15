#write your code here

def add (x,y)
    x + y
end

def subtract (x,y)
    x - y
end

def sum(goods)
    sumx = 0
    goods.each { |a| sumx = sumx + a }
    return sumx
end

def multiply (goods)
    sumx = 1
    goods.each { |a| sumx = sumx * a }
    return sumx
end

def power (x,y)
    x**y
end

def factorial(n)
    if n < 0
        return nil
    elsif n == 0 
        return 1
    elsif n == 1
        return 1
    else
        x = 1
        while n > 0
            x = x * n
            n = n - 1
        end
        return x
    end

end

