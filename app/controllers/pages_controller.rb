class PagesController < ApplicationController
  def landing_page
  	@featured_product = Product.find(3)
  end

  def contact
  end

  def about
  end
end
