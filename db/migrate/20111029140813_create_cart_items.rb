class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.float :price
      t.references :cart
      t.references :item

      t.timestamps
    end
    add_index :cart_items, :item_id
  end
end
