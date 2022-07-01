class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :teacher_id
      t.string :teacher_name
      t.string :school_name
      t.string :school_year

      t.timestamps
    end
  end
end
