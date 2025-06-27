require './lib/string_calculator'
RSpec.describe "#add" do
	it 'return 0 when pass empty string numbers' do
		expect(add('')).to eq(0)
	end
end