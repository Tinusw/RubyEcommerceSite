class StaticPagesController < ApplicationController
  def index
    @featured_product = Product.first
  end
end
