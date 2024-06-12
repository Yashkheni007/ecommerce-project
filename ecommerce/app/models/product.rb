class Product < ApplicationRecord
  has_many :wishlists
  has_many :carts
  belongs_to :catagory
  has_many :reviews
  has_many :order_products
  has_many :orders, through: :order_products

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
