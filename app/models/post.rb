class Post < ActiveRecord::Base
  include Likeable

  belongs_to :user
  mount_uploader :attachment, AvatarUploader
end
