def duplicate_counter(array)
  sorted = array.sort
  duplicates = 0

  sorted.each_with_index do |item, index|
    if sorted[index-1] && item == sorted[index-1]
      duplicates += 1
    end
  end

  return duplicates
end

puts duplicate_counter([1, 7, 7, 7, 3, 5])
puts duplicate_counter([5, 7, 9])
puts duplicate_counter([0,-5,-5,33,33,33])
puts duplicate_counter([7, 2, 7, 7, 3, 5, 4, 5])
