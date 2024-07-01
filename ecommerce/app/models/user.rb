class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
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

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "first_name", "id", "last_name", "mobile", "remember_created_at", "reset_password_sent_at", "reset_password_token", "status", "updated_at"]
  end
end
