class MakeChangesToProducts < ActiveRecord::Migration[5.1]
  def change
    change__column :products, :description, :text

    change__column :products, :price, "numeric USING CAST(price AS numeric)"
    change__column :products, :price, :decimal, precision: 9, scale: 2

    add_column :products, :in_stock, :boolean, default: true
  end
end
