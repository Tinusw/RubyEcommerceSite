require 'rails_helper'

describe Product do 
  before do 
    @product = Product.create!(name: "stylo", desc: "Test Product", price: "1")
    @user = User.create!(email: "test@test.com", password: "testtest")
    @product.comments.create!(rating:1, user: @user, body: "bad")
    @product.comments.create!(rating:3, user: @user, body: "medium")
    @product.comments.create!(rating:5, user: @user, body: "great")
  end

  it "expects the product to have the name stylo" do 
    @product.name === "stylo"
  end

  it "expects the product to have the description" do 
    @product.desc === "Test Product"
  end

  it "expect the product to have the price of 1" do
    @product.price === 1
  end

  it "expects the average of all 3 comments to be 3" do
    @product.comments.average(:rating) === 3
  end

  # testing Validations
  it "expects the model to validate name" do 
    expect(Product.new(desc: "no name", price: "1")).not_to be_valid
  end

  it "expects the model to validate description" do 
    expect(Product.new(name: "no desc", price: "1'")).not_to be_valid
  end

  it "expects the model to validate price" do 
    expect(Product.new(name: "no price", desc: "no price")).not_to be_valid
  end

  it "expects the model to validate that price is an integer" do 
    expect(Product.new(name: "not int", desc: "not int", price: "not int")).not_to be_valid
  end
end