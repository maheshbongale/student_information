class CreateStudentDetails < ActiveRecord::Migration
  def change
    create_table :student_details do |t|
      t.integer :id
      t.string :name
      t.string :subject1
      t.string :subject2
      t.string :subject3

      t.timestamps
    end
  end
end
