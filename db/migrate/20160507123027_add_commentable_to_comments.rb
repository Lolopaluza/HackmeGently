class AddCommentableToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commentable_id, :integer
    add_index :comments, :commentable_id
    add_column :comments, :commentable_type, :string
  end
end
