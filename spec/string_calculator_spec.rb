require './lib/string_calculator'
RSpec.describe "#add" do
	it 'return 0 when pass empty string numbers' do
		expect(add('')).to eq(0)
	end
	it 'return 1 when pass "1"' do
    expect(add('1')).to eq(1)
  end
	 it 'return 3 when pass "1,2"' do
    expect(add('1,2')).to eq(3)
  end
	it 'return 7 when pass "1\n2,4"' do
    expect(add("1\n2,4")).to eq(7)
  end
	it 'return 12 when pass "//;\n1;2;9"' do
    expect(add("//;\n1;2;9")).to eq(12)
  end
	it 'return 11 when pass "//|\n1|2|3|5"' do
    expect(add("//|\n1|2|3|5")).to eq(11)
  end
	it 'return 6 when pass "//[***]\n1***2***3"' do
    expect(add("//[***]\n1***2***3")).to eq(6)
  end
	it 'return 10 when pass "//|\n1|2|3|4|1001"' do
    expect(add("//|\n1|2|3|4|1001")).to eq(10)
  end
end