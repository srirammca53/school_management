class AddStudentToBatch < ActiveRecord::Migration[5.1]
  def change
    add_column :batches, :student_id, :string
  end
end
