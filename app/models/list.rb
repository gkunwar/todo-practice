class List < ActiveRecord::Base
	validates :title, presence: true
	mount_uploader :avatar, AvatarUploader
end
