class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :reviews
  has_one :wishlist
  has_one :cart

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :mobile, format: { with: /\A\d{10}\z/, message: "must be a 10-digit number" }
  # validates :password, presence: true, length: { minimum: 6 }

  def full_name
    "#{self&.first_name} #{self&.last_name}"
  end
end
