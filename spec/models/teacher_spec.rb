require 'rails_helper'

RSpec.describe Teacher, type: :model do

  context "Add teachers" do
		it "has none to begin with" do
			expect(Teacher.count).to eq 0
		end
		it "has one after add " do
			Teacher.create!(teacher_name: "teacher1")
			expect(Teacher.count).to eq 1
		end
	let(:teacher) { Teacher.create!(teacher_name: "teacher1", school_name: "school1", school_year: "2000") }
 
  describe "attributes" do
     it "has teacher_name, school_name and school_year attributes" do
       expect(teacher).to have_attributes(teacher_name: "teacher1", school_name: "school1", school_year: "2000")
     end
  end
		it "checks school_year is it's Skool_years.year after assignment" do
			teacher = Teacher.create!(teacher_name: "teacher1")
			teacher.skool_years.build(year: "2000")
			teacher.school_year = teacher.skool_years.first.year
			expect(teacher.school_year).to eq("2000")
		end
		it "checks teacher's school_name is it's School's school_name after assignment" do
			teacher = Teacher.create!(teacher_name: "teacher1")
			teacher.schools.build(school_name: "school1")
			teacher.school_name = teacher.schools.first.school_name
			expect(teacher.school_name).to eq("school1")
		end
		it "has none after add was in the previous " do
			expect(Teacher.count).to eq 0
		end
	end

end
