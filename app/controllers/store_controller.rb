class StoreController < ApplicationController
  def index
  	#products will be instance variable to the view!
  	@products = Product.order(:title)
  end
end
