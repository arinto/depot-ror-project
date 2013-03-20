#do it only once for each module that we set up

FactoryGirl.define do
	factory :product do
		title "MyProduct"
		description "Product description"
		price 1.99
		image_url 'images/wd4d.jpg'
	end	
end