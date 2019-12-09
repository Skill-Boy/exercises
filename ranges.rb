def ranges(ranges, range)
  ranges.each do |range_number, range_name| 
    return range_name if range_number === range
  end
end
  
range = 
  {
    -9999..0 => "sin fico",
    1..10 => "poco fico",
    11..20 => "fico regular"
  }
  
ranges(range, -12)