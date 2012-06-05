class CreateOlists < ActiveRecord::Migration
  def change
    create_table :olists do |t|
      t.integer :order_id
      t.integer :slist_id

      t.timestamps
    end
  end
end
