class ChangeImageurlToImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :image_url, :url
  end
end
