class Post < ActiveRecord::Base
  include Likeable

  belongs_to :user
end
