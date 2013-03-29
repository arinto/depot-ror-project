
require 'spec_helper'

describe Product do 
	it "new product with empty title" do
		expect {create(:product, title: nil)}.to raise_error
	end	

	it "new product with empty description" do
		expect {create(:product, description: nil)}.to raise_error
	end

	it "new product with empty price" do
		expect {create(:product, price: nil)}.to raise_error
	end

	it "new product with invalid price" do
		expect {create(:product, price: 0.0)}.to raise_error
	end

	it "new produce with negative price" do
		expect {create(:product, price: -1.0)}.to raise_error
	end

	it "new product with empty image url" do
		expect {create(:product, image_url: nil)}.to raise_error
	end

	it "new product already exists" do
		create(:product)
		expect {create(:product)}.to raise_error
	end

	it "invalid image_url" do
		expect {create(:product, image_url: ".docx")}.to raise_error
	end
end