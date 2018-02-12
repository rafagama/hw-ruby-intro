# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  soma = 0
  arr.each do |num| 
    soma += num
  end
  soma
end

def max_2_sum arr
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort[-1] + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  if arr.nil?
    false
  elsif arr.length < 2
    false
  else
    arr.each_with_index do |num1, index1|
      arr.each_with_index do |num2, index2|
        if (num1 + num2) == n && index1 != index2; return true ; end
      end
    end
    false
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.nil? || s.empty?
    false
  elsif (s[0].upcase =~ /[BCDFGHJKLMNPQRSTVWXYZ]/) == 0
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s.nil? || s.empty?
    false
  elsif (s.to_i(2) % 4) == 0 && (s[0] =~ /[0-9]/) == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize (isbn, price)
    raise ArgumentError.new("Not valid ISBN") if isbn.empty?
    @isbn = isbn
    raise ArgumentError.new("Not valid price") if price <= 0
    @price = price
  end
  
  def isbn=(new_isbn) ; @isbn = new_isbn ; end
  def isbn ; @isbn ; end
  def price=(new_price) ; @price = new_price ; end
  def price ; @price ; end
    
  def price_as_string ; "$" + ("%2.2f" % price) ; end
end
