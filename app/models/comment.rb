class Comment < ActiveRecord::Base
  include Likeable

  belongs_to :post
  belongs_to :user
end
