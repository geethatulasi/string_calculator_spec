def add(str_numbers)
	return 0 if str_numbers.strip.empty?
	numbers = str_numbers.scan(/\d+/).map(&:to_i).select{ |n| n < 1000 }
	return numbers.sum
end