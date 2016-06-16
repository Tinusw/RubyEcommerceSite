class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  # this is for arty.js and average score of a product
  def average_rating
    comments.average(:rating).to_f
  end
end
