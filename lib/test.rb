def esra
    return "Esra"
end 

def adding 
    return  3 + 3
end 

def multiply
    numbers = [1, 2, 3]
    numbers.map { |n| n * 2 } 
end 

def multiply2 
    numbers = [1, 2, 3]
    numbers * 2 
end 

def name
    name2 = "James"
    city = "Istanbul"
    return "Hello #{name2}"  + "!, " + "Welcome to #{city}"
end 

def number 
    user_input = gets.chomp 
    print "My favourite number is #{user_input}"
end 
