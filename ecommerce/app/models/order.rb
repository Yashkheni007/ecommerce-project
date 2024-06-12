class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  has_many :products, through: :order_products


  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :contry, presence: true
  validates :paymentMethod, presence: true
  validates :status, presence: true
end
