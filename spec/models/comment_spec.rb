require 'rails_helper'

# test validations
describe Comment do
  before do
    @product = FactoryGirl.create(:product)
    @user = FactoryGirl.create(:user)
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
