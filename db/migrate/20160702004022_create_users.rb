class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :hashed_password, null: false
      t.string :role, null: false

      t.timestamps null: false
    end
  end
end
