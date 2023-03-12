class CreateInstitutes < ActiveRecord::Migration[5.1]
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.string :email
      t.string :website
      t.string :user_id
      t.references :user

      t.timestamps
    end
  end
end
