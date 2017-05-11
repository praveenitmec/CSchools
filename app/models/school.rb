class School < ApplicationRecord
  has_one :school_address, :dependent => :destroy
  has_one :school_detail, :dependent => :destroy
  accepts_nested_attributes_for :school_address, allow_destroy: true
  accepts_nested_attributes_for :school_detail, allow_destroy: true
  validates :name, :stype, presence: true
  validates :stype, inclusion: { in: ["Goverment", "Private", "Goverment Aided"],
    message: "%{value} is not a valid School type" }
end
