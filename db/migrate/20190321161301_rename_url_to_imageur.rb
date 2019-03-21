class RenameUrlToImageur < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :url, :image_url
  end
end
