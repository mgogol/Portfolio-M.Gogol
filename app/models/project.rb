class Project < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200>", thumb: "200x200>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
