class SchoolAddress < ApplicationRecord
  belongs_to :school, optional: true
end
