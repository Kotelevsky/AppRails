class CreateSpares < ActiveRecord::Migration
  def change
    create_table :spares do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
