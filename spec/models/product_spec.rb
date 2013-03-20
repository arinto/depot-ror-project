
require 'spec_helper'

describe Product do 
	it "new product with empty title" do
		expect {create(:product, title: nil)}.to raise_error
	end	

	it "new product with empty description" do
		expect {create(:product, description: nil)}.to raise_error
	end

	#TODO: go through for each validation and write a test case on it	
end