class CreateAddPriceToSpares < ActiveRecord::Migration
  def change
    create_table :add_price_to_spares do |t|
      t.float :price

      t.timestamps
    end
  end
end
