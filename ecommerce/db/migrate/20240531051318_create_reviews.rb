class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :user,null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :title, null: false
      t.string :content, null: false
      t.string :image
      t.datetime :createdAt

      t.timestamps
    end
  end
end
