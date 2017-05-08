class School < ApplicationRecord
  has_one :school_address, :dependent => :destroy
  accepts_nested_attributes_for :school_address,allow_destroy: true
end
