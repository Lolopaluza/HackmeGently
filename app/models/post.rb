class Post < ActiveRecord::Base
  include Likeable
  acts_as_commentable

  belongs_to :user
  mount_uploader :attachment, AvatarUploader
end
