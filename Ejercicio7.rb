def multiplication(numbers)
  total = 1
  new_numbers = []

  numbers.each do |number|
   total = number * total
  end
  for number in 1..(numbers.length)
   new_numbers.push(total/number)
  end
  
  new_numbers
end
   
numbers = [1, 2, 3, 4, 5]
   
multiplication(numbers)