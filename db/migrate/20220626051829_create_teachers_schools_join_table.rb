class CreateTeachersSchoolsJoinTable < ActiveRecord::Migration[6.1]
  def change
  	create_join_table :teachers, :schools
  end
end
