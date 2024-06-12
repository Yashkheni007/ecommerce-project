class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.datetime :orderDate
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :contry, null: false
      t.string :paymentMethod, null: false
      t.boolean :status

      t.timestamps
    end
  end
end
