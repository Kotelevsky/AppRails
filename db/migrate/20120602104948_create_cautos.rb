class CreateCautos < ActiveRecord::Migration
  def change
    create_table :cautos do |t|
      t.integer :client_id
      t.integer :auto_id
      t.date :year
      t.float :mileage

      t.timestamps
    end
  end
end
