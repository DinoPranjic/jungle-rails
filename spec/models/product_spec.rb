require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'validates name' do
      category = Category.create(name: "Shrubs")
      product = Product.new(price: 50, quantity: 50, category: category)
      expect(product.valid?).to eq(false)
      expect(product.errors.full_messages).to include("Name can't be blank")
    end
    it 'validates price' do
      category = Category.create(name: "Shrubs")
      product = Product.new(name: "shrub", quantity: 50, category: category)
      expect(product.valid?).to eq(false)
      expect(product.errors.full_messages).to include("Price can't be blank")
    end
    it 'validates quantity' do
      category = Category.create(name: "Shrubs")
      product = Product.new(name: "shrub", price: 50, category: category)
      expect(product.valid?).to eq(false)
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end
    it 'validates category' do
      product = Product.new(name: "shrub", price: 50, quantity: 50)
      expect(product.valid?).to eq(false)
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
    it 'saves new product properly' do
      category = Category.create(name: "Shrubs")
      product = Product.new(name: "shrub", price: 50, quantity: 50, category: category)
      expect(product.valid?).to eq(true)

    end
  end
end
