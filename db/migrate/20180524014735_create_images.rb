class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image_url
      t.text :url
      t.string :alt
      
    end
  end
end
