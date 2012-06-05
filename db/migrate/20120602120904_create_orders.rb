class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :cauto_id

      t.timestamps
    end
  end
end
