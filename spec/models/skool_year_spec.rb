require 'rails_helper'

RSpec.describe SkoolYear, type: :model do
  context "Add skool_years" do
		
		it "check skool_year's year is what is assigned" do
			teacher = Teacher.create!(teacher_name: "teacher1")
			teacher.skool_years.build(year: "2000")
			skool_yr1 = teacher.skool_years.first
			expect(skool_yr1.year).to eq("2000")
		end
		
		it "check skool_year's teacher's name is what assigned" do
			teacher = Teacher.create!(teacher_name: "teacher1")
			teacher.skool_years.build(year: "2000")
			skool_yr1 = teacher.skool_years.first
			expect(skool_yr1.teacher.teacher_name).to eq("teacher1")
		end

	end
end
