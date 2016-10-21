class Project < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	validates :name, :description, presence: true
end
