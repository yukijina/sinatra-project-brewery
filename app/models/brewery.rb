class Brewery < ActiveRecord::Base
  has_many :brands
  has_secure_password

end
