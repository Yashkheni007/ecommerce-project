class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :description, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :image
      t.string :name, null: false
      t.string :size

      t.timestamps
    end
  end
end
