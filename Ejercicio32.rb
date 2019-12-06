def intersect(range_list)
  new_ranges = range_list.map do |min, max|           
    min..max 
  end

  new_ranges.combination(2)
    .count { |range_one, range_two| 
    range_two.begin <= range_one.end && 
    range_one.begin <= range_two.end
    }
end

range_list = [
  [40, 85], 
  [10, 60], 
  [70, 160],
]

intersect range_list