class Brewery < ActiveRecord::Base
  has_many :brands
  has_secure_password
  validates :name, :email, :city, presence: true

end
