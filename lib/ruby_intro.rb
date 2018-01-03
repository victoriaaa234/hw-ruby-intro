# Victoria Wei

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr = arr.sort
  sum(arr.last(2))
end

def sum_to_n? arr, n
  if arr.length < 2 then return false end
  arr.combination(2).each {|x| if sum(x) == n then return true end }    
  return false
end

# Part 2

def hello(name)
  String.try_convert("Hello, " + name)
end

def starts_with_consonant? s
  if s.empty? then return false end
  s = s[0]
  if s[/[a-zA-Z]/] == s
    s = s.downcase
    if s[/[^aeiou]/] == s then return true 
    else return false end
  else return false end
end

def binary_multiple_of_4? s
  if s.empty? then return false end
  if s.gsub(/[01]/,'') == ''
    if s.to_i(2) % 4 == 0 then return true else return false end
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.empty? then raise ArgumentError.new("ISBN is empty") end
    if price <=0 then raise ArgumentError.new("Price is less than or equal to zero") end
  end
  def isbn
    @isbn
  end
  def isbn=(value)
    @isbn = value
  end
  def price
    @price
  end 
  def price=(value)
    @price = value
  end
  def price_as_string
    sprintf("$%.2f", price)
  end
end
