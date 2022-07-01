# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do Teacher.create([{
# 	teacher_name: Faker::Name.name,
# 	school_name:  Faker::Name.name,
# 	school_year:  rand(2000..2030).to_s,
# 	teacher_id: rand(1..2500)
# }])
# end

100.times do Teacher.create([{
	teacher_name: (Faker::Name.name),
	# school_name:  (Faker::Name.name + ","),
	# school_year:  (rand(2000..2200).to_s + ","),
	# teacher_id: rand(1..2500) 
}])
end

Teacher.all.each do |teacher|
	teacher.teacher_id = teacher.id.to_s
	teacher.schools.create(school_name:(Faker::Name.name + ","))
	teacher.school_name = ""
	teacher.school_name << teacher.schools.first.school_name
	teacher.skool_years.create(year:(+ rand(2000..2900).to_s + ","))
	teacher.school_year = ""
	teacher.school_year << teacher.skool_years.first.year
	teacher.schools.create(school_name:(Faker::Name.name + ","))
	teacher.school_name << teacher.schools.second.school_name
	teacher.save
	teacher.skool_years.create(year:(rand(2000..2900).to_s + ","))
	teacher.school_year << teacher.skool_years.second.year
	teacher.save
end

