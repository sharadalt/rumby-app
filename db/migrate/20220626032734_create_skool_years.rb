class CreateSkoolYears < ActiveRecord::Migration[6.1]
  def change
    create_table :skool_years do |t|
      t.string :year
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
