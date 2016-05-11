class Post < ActiveRecord::Base
	validates :image, presence: true
	has_file_attached :image, styles: { :medium => "640x"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
