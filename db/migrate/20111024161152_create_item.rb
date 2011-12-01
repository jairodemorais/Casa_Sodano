class CreateItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.references :category
      
      t.timestamps
    end
  end
end
