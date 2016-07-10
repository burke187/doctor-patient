class Doctor < ActiveRecord::Base

  #
  # Associations
  #
  has_many :patients
end
