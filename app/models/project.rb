class Project < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "100%x700", thumb: "" },
                    convert_options: { thumb: "-gravity north -thumbnail 320x320^ -extent 320x320" }
                    # convert_options: { thumb: "-gravity north -thumbnail 260x260^ -extent 260x260" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged
end
