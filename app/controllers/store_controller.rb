class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart

  def index
  	@products = Product.order(:title)
  	increment_counter
  end

  def increment_counter
  	if session[:counter] ||= 0
  	end
  	session[:counter] += 1
  end
end
