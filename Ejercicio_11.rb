require 'json'
require 'stringio'
def birthday(squares, day, month)
  squares.each_cons(month).map(&:sum).select { |squares| squares == day }.count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

squares = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

day = dm[0].to_i

month = dm[1].to_i

result = birthday squares, day, month

fptr.write result
fptr.write "\n"

fptr.close()
