require 'json'
require 'stringio'

def plusMinus(arr)
  positive = 0
  negative = 0
  zero = 0

  arr.each do |number|
    positive += 1 if number.positive?()
    negative += 1 if number.negative?()
    zero += 1 if number.zero?()  
  end
  
  puts positive.fdiv(arr.length)
  puts negative.fdiv(arr.length)
  puts zero.fdiv(arr.length)
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
