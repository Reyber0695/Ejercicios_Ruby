require 'json'
require 'stringio'

def staircase(n)
  for number in (1..n) do
    puts ("#" * number).rjust(n)
  end
end

n = gets.to_i

staircase n
