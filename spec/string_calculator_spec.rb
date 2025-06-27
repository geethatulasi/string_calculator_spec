require './lib/string_calculator'
RSpec.describe "#add" do
	it 'return 0 when pass empty string numbers' do
		expect(add('')).to eq(0)
	end
	it 'return 1 when pass "1"' do
    expect(add('1')).to eq(1)
  end
end