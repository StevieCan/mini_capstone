class Product < ApplicationRecord
  
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: self.id) #Association method
  # end

  def is_discounted?
    price < 10
  end
  
  def tax
    tax = price * 0.09
  end

  def total
    price + tax
  end
end
