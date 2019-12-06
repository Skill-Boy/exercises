def intersection(numbers)
  ranges = numbers.map {|min, max| min..max}  
  intersection_counter = 0
  
  ranges.combination(2) do |one_number, two_number|
    first_range = one_number.first <= two_number.last
    second_range = two_number.first <= one_number.last

    intersection_counter += 1 if first_range && second_range  
  end

  intersection_counter
end
  
intersection([[40, 85], [10, 60], [70, 160]])