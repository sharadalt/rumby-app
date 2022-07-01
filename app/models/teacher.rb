class Teacher < ApplicationRecord
	has_many :skool_years, dependent: :destroy
	has_and_belongs_to_many :schools, dependent: :destroy
	accepts_nested_attributes_for :skool_years, reject_if: :all_blank
	accepts_nested_attributes_for :schools, reject_if: :all_blank
end
