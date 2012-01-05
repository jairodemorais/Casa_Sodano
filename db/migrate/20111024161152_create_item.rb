class CreateItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.references :category
      t.text :url_image
      
      t.timestamps
    end
  end
end
