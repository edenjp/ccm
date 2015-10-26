class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.text :department

      t.timestamps
    end

    add_index :users, :email, :uniqueness => true
  end
end
