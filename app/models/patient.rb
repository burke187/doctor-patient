class Patient < ActiveRecord::Base

  #
  # Associations
  #
  belongs_to :doctor
end
