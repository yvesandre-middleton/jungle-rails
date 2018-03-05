require 'rails_helper'

RSpec.describe Product, type: :model do

describe 'Should save' do

  it 'Should have empty fields' do
     @category = Category.new(name: 'Apparel')
      @product = Product.new(name: 'Red shoes',
        price: 10,
        quantity: 2,
        category: @category
      )

    expect(@product.name).to eq('Red shoes')
    expect(@product.price).to eq(10)
    expect(@product.quantity).to eq(2)
    expect(@product.category).to eq(@category)
    expect(@product).to be_valid
  end
end

  describe 'Validations' do

    it 'Should contain name' do
      @category = Category.new(name: 'Apparel')
      @product = Product.new(name: nil,
        price: 10,
        quantity: 2,
        category: @category
      )

      expect(@product).to_not be_valid
      expect(@product.errors[:name].size).to eq(1)
    end

    it 'Should contain price' do
      @category = Category.new(name: 'Apparel')
      @product = Product.new(name: 'Red shoes',
        price: nil,
        quantity: 2,
        category: @category
      )

    expect(@product).to_not be_valid
    expect(@product.errors[:price].size).to eq(2)
    end

    it 'Should contain quantity' do
      @category = Category.new(name: 'Apparel')
      @product = Product.new(name: 'Red shoes',
        price: 10,
        quantity: nil,
        category: @category
      )

    expect(@product).to_not be_valid
    expect(@product.errors[:quantity].size).to eq(1)
    end

    it 'Should contain category' do
      @category = Category.new(name: 'Apparel')
      @product = Product.new(name: 'Red shoes',
        price: 10,
        quantity: 2,
        category: nil
      )

    expect(@product).to_not be_valid
    expect(@product.errors[:category].size).to eq(1)
    end

  end
end
