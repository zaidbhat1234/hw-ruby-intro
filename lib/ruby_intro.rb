# Ruby 2.6.3 version(Default on Cloud9 AWS used)

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a}
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  count = arr.size
  if count == 0
    return 0
  elsif count ==1
    return arr[0]
  else 
    s = 0
    arr = arr.sort
    s = arr[-1] + arr[-2]
    return s
  end
  
end

def sum_to_n? arr, n
  flag = 0
  if arr.size<=1
    flag = 0
  
  else
    arr = arr.sort
    for i in 0 ... arr.size do 
      for j in i+1 ... arr.size do
        if arr[i]+arr[j] == n
          flag = 1
        end
      end
    end
  end
  if flag == 1
    return true
  else 
    return false
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  
  if s.size == 0
    return false
  end
  
  start = s[0]
  flag = 0 
  if start.match?(/[[:alpha:]]/) == false
    return false
  end
  x = ['a','e','i','o','u',"A","E","I","O","U"].include?(start)
  if x == true
    flag = 0
  else
    flag = 1
  end
  if flag == 0
    return false
  else 
    return true
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  #Check if invalid binary number or empty string
  if s.count('01') != s.size or s.size == 0 
    flag = false
  elsif s.size == 1
    if s == ('0')
      flag = 1
    end
  #checks if rightmost two bits in binary are 0 then it is divisible by 4
  else
    if s[-1] == ('0') and s[-2]==('0')
      flag = true
    else 
      flag = false
    end
  return flag
  end
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError.new(
    "Expected non empty value of ISBN, got empty") if isbn.size < 1
    raise ArgumentError.new(
    "Expected price greater 0 ISBN, got less than") if price <= 0
  end
  
  #Getters and Setters
  def isbn
    return @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    return @price
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    num = 0
    p = @price
    #checks how many decimal places in the number and adds 0's if decimal places less than 2
    while(p != p.to_i)
        num += 1
        p *= 10
    end
    s = ""
    if num == 0 
      s = "$"+price.to_s+".00"
    elsif num == 1
      s = "$"+price.to_s+"0"
    else
      s = "$"+price.to_s
    end
    return s
    
    #Alternatively can also be done in a single line as :
    return "$" + sprintf("%.2f", @price)
  end
# YOUR CODE HERE
end
