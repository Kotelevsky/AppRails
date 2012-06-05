class AddWarehouseIdToOrderspares < ActiveRecord::Migration
  def change
    add_column :orderspares, :warehouse_id, :integer
  end
end
