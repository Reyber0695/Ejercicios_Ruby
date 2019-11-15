def addition(numbers)
  final_numbers = []
  new_number = ""
  
  numbers.each do |number|
    number = number.to_s
    new_number = number.split("0", number.length)
    final_numbers.push(new_number.last.to_i)
  end

  final_numbers.sum
end

numbers = [1200000265, 1000002360, 1670000800, 1000006002, 1000000233]

addition(numbers)