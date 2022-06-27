require 'rails_helper'

RSpec.describe School, type: :model do
	context "Add schools" do
		it "has none to begin with" do
			expect(School.count).to eq 0
		end
		it "has one after add " do
			School.create!(school_name: "school1")
			expect(School.count).to eq 1
		end

		it "checks school's name is it's assigned name while creation" do
			school = School.create!(school_name: "school1")
			expect(school.school_name).to eq("school1")
		end
		
		it "checks teacher's name is it's Teacher's teacher_name after assignment" do
			school = School.create!(school_name: "school1")
			school.teachers.build(teacher_name: "teacher1")
			expect(school.teachers.first.teacher_name).to eq("teacher1")
		end
		it "has none after add was in the previous " do
			expect(School.count).to eq 0
		end
	end
end
