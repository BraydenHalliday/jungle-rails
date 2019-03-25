require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it "is not valid #general" do
      @category = Category.new(
        name: 'new stuff'
      )
      @product = Product.new(
        name: 'thing',
        description: 'the thing',
        price: 100,
        quantity: 1,
        category: @category,
        image: 'img'
      )
  
      expect(@product).to be_valid
    end
  end
  describe 'Validations' do
    it "is not valid without a name" do
      @category = Category.new(
        name: 'new stuff'
      )
      @product = Product.new(
        name: nil,
        description: 'the thing',
        price: 100,
        quantity: 1,
        category: @category,
        image: 'img'
      )
      @product.save
       #raise puts @product.errors.full_messages
      expect(@product.errors.full_messages).to include("Name can't be blank")
      #expect(@product).to raise_error("can't be blank")
    end
  end

  describe 'Validations' do
    it "is not valid without a price" do
      @category = Category.new(
        name: 'new stuff'
      )
      @product = Product.new(
        name: 'fghfghj',
        description: 'the thing',
        quantity: 1,
        category: @category,
        image: 'img'
      )
      @product.save
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end
  end
  describe 'Validations' do
    it "is not valid without a quantity" do
      @category = Category.new(
        name: 'new stuff'
      )
      @product = Product.new(
        name: 'fghfghj',
        description: 'the thing',
        price: 100,
        quantity: nil,
        category: @category,
        image: 'img'
      )
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
  end
  
  describe 'Validations' do
    it "is not valid without a catagory" do
      @category = Category.new(
        name: 'new stuff'
      )
      @product = Product.new(
        name: 'fghfghj',
        description: 'the thing',
        price: 100,
        quantity: 1,
        category: nil,
        image: 'img'
      )
      @product.save
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end

end