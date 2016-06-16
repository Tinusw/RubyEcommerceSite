class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  # data validation
  validates :name, presence: true
    validates :desc, presence: true
    validates :price, numericality: { only_integer: true}

  # this is for arty.js and average score of a product
  def average_rating
    comments.average(:rating).to_f
  end
end
