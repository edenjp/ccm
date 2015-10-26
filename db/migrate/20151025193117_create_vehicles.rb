class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.text :color
      t.string :type
      t.string :plaque


      t.timestamps
    end
  end
end
