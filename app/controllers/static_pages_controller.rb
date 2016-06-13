class StaticPagesController < ApplicationController
  def index
    @products = Product.first(3)
  end
end
