def add(str_numbers)
	return 0 if str_numbers.strip.empty?
	numbers = str_numbers.scan(/\d+/).map(&:to_i)
	return numbers.sum
end