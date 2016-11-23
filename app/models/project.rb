class Project < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "800x600>", thumb: "250x250>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged
end
