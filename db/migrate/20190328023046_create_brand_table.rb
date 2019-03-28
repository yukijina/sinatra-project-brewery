class CreateBrandTable < ActiveRecord::Migration
  def up
    create_table :brands do |t|
      t.string :name
      t.string :style
      t.string :ABV
      t.integer :brewery_id
    end
  end

  def down
    drop_table :brands
  end
end
