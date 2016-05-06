class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :text
      t.referencescomment :user

      t.timestamps null: false
    end
  end
end
