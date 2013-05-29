class StoreController < ApplicationController
  def index
  	#products will be instance variable to the view!
  	@products = Product.order(:title)
  	@count = increment_count
  	@shown_message = "You have been here #{@count} times" if @count > 5
    @cart = current_cart
  end

  def increment_count
  	session[:counter] ||= 0
  	session[:counter] += 1
  end
end
