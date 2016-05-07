class CreateJoinTableStalkersUsers < ActiveRecord::Migration
  def change
    create_join_table :stalkers, :users do |t|
      t.index :stalker_id, :user_id
      t.index :user_id, :stalker_id
    end
  end
end
