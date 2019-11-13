require 'json'
require 'stringio'

def plusMinus(arr)
  positive = 0
  positivepercent = 0
  negative = 0
  negativepercent = 0
  zero = 0
  zeropercent = 0

  arr.each do |number|
    positive += 1 if number.positive?()
    negative += 1 if number.negative?()
    zero += 1 if number.zero?()  
  end
  
  positivepercent = positive.fdiv(arr.length)
  negativepercent = negative.fdiv(arr.length)
  zeropercent = zero.fdiv(arr.length)
  
  puts positivepercent
  puts negativepercent
  puts zeropercent
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
