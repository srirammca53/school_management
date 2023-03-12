class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone
      t.string :city
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :pincode

      t.timestamps
    end
  end
end
