class CreateOrderspares < ActiveRecord::Migration
  def change
    create_table :orderspares do |t|
      t.integer :spare_id
      t.float :count
      t.integer :flag_id
      t.timestamps
    end
  end
end
