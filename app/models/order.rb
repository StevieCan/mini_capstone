class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal
    self.subtotal = product.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_totals
    @order.calculate_subtotal 
    @order.calculate_tax 
    @order.calculate_total 
  end

  def purchased_on
    created_at.strftime(%m/%d/%Y)
  end
end
