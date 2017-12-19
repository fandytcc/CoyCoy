class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.integer :quantity
      t.boolean :purchased
      t.decimal :total_price
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
