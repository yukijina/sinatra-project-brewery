class Brewery < ActiveRecord::Base
  has_many :brands
  has_secure_password
  validates :name, :email, :city, presence: true
  validates :email, uniqueness: { message: " you entered is already taken. Please use another email address. OR please log in if you alerady have an account." }
end
