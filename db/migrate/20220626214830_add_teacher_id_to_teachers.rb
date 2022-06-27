class AddTeacherIdToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :teacher_id, :integer
  end
end
