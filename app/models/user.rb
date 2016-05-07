class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :skills
  has_many :comments
  has_many :posts
  has_and_belongs_to_many :stalkers, join_table: :stalkers_users
  has_many :outgoing_stalker_requests, class_name: :StalkerRequest
  has_many :incoming_stalker_requests, class_name: :StalkerRequest, foreign_key: :stalker_id

  def to_stalker
    Stalker.find(id)
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
