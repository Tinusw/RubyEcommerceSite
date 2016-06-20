require 'rails_helper'

describe Product do 
  before do 
    @product = FactoryGirl.create(:product)
    @user = FactoryGirl.create(:user)
    @product.comments.create!(rating:1, user: @user, body: "bad")
    @product.comments.create!(rating:3, user: @user, body: "medium")
    @product.comments.create!(rating:5, user: @user, body: "great")
  end

  it "expects the product to have the name stylo" do 
    expect(@product.name).to eq "stylo"
  end

  it "expects the product to have the description" do 
    expect(@product.desc).to eq "Test Product"
  end

  it "expect the product to have the price of 1" do
    expect(@product.price).to eq(1.0)
  end

  it "expects the average of all 3 comments to be 3" do
    expect(@product.comments.average(:rating)).to eq(3)
  end

  # testing Validations
  it "expects the model to validate name" do 
    expect(Product.new(desc: "no name", price: 1)).not_to be_valid
  end

  it "expects the model to validate description" do 
    expect(Product.new(name: "no desc", price: 1)).not_to be_valid
  end

  it "expects the model to validate price" do 
    expect(Product.new(name: "no price", desc: "no price")).not_to be_valid
  end

  it "expects the model to validate that price is an integer" do 
    expect(Product.new(name: "not int", desc: "not int", price: "not int")).not_to be_valid
  end
end