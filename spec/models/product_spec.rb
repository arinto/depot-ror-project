
require 'spec_helper'

describe Product do 
	it "new product with empty title" do
		expect {Product.create!({title: nil, description: 'a great product', price: 1.99, image_url: '/images/wd4d.jpg'})}.to raise_error
	end	
end