def calculate(number_one, number_two)
  yield(number_one, number_two)
end
  
calculate(15, 20) {|number_one, number_two| puts number_one + number_two}
calculate(15, 20) {|number_one, number_two| puts number_one - number_two}
calculate(15, 20) {|number_one, number_two| puts number_one * number_two}
calculate(15, 20) {|number_one, number_two| puts number_one / number_two}