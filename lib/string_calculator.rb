def add(str_numbers)
	return 0 if str_numbers.strip.empty?
	numbers = str_numbers.scan(/-?\d+/).map(&:to_i).select{ |n| n < 1000 }
	negatives = numbers.select(&:negative?)
	raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
	return numbers.sum
end