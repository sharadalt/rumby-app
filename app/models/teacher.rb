class Teacher < ApplicationRecord
	has_many :skool_years
	has_and_belongs_to_many :schools
end
