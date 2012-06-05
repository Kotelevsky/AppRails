class AddPriceToSpares < ActiveRecord::Migration
  def change
    add_column :spares, :price, :float
  end
end
