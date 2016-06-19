require 'rails_helper'

# test validations
describe Comment do
  before do
    @product = Product.create!(name: "stylo", desc: "Test Product", price: "1")
    @user = User.create!(email: "test@test.com", password: "testtest")
  end

  it "expects a comment to have a body" do 
    expect(Comment.new(product: @product, user: @user,  rating: "1")).not_to be_valid
  end

  it "expects a comment to be associated to a user" do 
    expect(Comment.new(product: @product, body: "test body", rating: "1")).not_to be_valid
  end

  it "expects a comment to be assocaited with a product" do 
    expect(Comment.new(body: "test body", user: @user, rating: "1")).not_to be_valid
  end

  it "expects a comment to have a rating" do 
    expect(Comment.new(user: @user, product: @product, body: "test body")).not_to be_valid
  end

  it "expects a comment to have a valid numberical rating" do 
    expect(Comment.new(user: @user, product: @product, body: "test body", rating: "test")).not_to be_valid
  end
end
