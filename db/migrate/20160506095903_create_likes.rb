class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      likeable_id :integer :index
      likeable_type :string
      t.timestamps null: false
    end
  end
end
