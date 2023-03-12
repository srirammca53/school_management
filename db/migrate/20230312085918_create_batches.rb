class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.integer :number
      t.date :start_date
      t.date :end_date
      t.time :timee
      t.string :user_id
      t.references :institute
      t.timestamps
    end
  end
end
