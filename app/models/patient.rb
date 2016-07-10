class Patient < ActiveRecord::Base

  #
  # Associations
  #
  belongs_to :doctor
  has_attached_file :file , styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
end
