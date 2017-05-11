class SchoolAddress < ApplicationRecord
  belongs_to :school, optional: true
  validates :city, :state, :phone_number, presence: true
end
