class StalkerRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :stalker
end
