def add(numbers)
  max_rank = 0
  max_column = 0

  numbers.each do |rank|
    add_rank = rank.sum
    add_rank > max_rank ? max_rank = add_rank : max_rank
    numbers.transpose().each do |col|
      add_col = col.sum
      add_col > max_column ? max_column = add_col : max_column
    end
  end

  max_rank > max_column ? max_rank : max_column
end

numbers =[[6, 7, 8], [1, 4, 29], [4, 78, 12]]

add numbers