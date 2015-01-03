class PagesController < ApplicationController
  def landing_page
  	@featured_product = Product.find(3)
  	@articles = Article.limit(3).order('created_at DESC')
  end

  def contact
  end

  def about
  end
end
