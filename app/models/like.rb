class Like < ActiveRecord::Base
  belongs_to :likeable, polimorphic :true
  belongs_to :user

  likeable_id :integer :index
  likeable_type :string
end
