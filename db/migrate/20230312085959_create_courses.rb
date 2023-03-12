class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :version
      t.float :fee
      t.references :batch

      t.timestamps
    end
  end
end
