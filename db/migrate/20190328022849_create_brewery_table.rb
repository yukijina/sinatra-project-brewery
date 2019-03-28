class CreateBreweryTable < ActiveRecord::Migration
  def up
    create_table :breweries do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :password_digest
    end
  end

  def down
    drop_table :breweries
  end
end
