class CreateSlists < ActiveRecord::Migration
  def change
    create_table :slists do |t|
      t.integer :work_id
      t.integer :spare_id
      t.float :count

      t.timestamps
    end
  end
end
