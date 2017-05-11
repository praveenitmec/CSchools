class SchoolDetail < ApplicationRecord
  belongs_to :school, optional: true
  validates :grade, presence: true
end
