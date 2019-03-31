class ChangeBrandTableColumn < ActiveRecord::Migration
  def change
    rename_column :brands, :ABV, :abv
  end
end
