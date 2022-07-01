class School < ApplicationRecord
	has_and_belongs_to_many :teachers
	accepts_nested_attributes_for :teachers, reject_if: :all_blank;
end
