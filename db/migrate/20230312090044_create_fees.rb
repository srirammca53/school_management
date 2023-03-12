class CreateFees < ActiveRecord::Migration[5.1]
  def change
    create_table :fees do |t|
      t.string :user_id
      t.string :batch_id
      t.string :course_id
      t.boolean :total_fee_paid

      t.timestamps
    end
  end
end
