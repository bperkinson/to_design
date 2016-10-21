class Landing < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :description, :philosophy, presence: true
end
