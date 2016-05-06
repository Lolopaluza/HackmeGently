class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      skills_type :string
      t.timestamps null: false
    end
  end
end
