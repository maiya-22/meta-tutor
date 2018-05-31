class CreateJoinTableTagTutorial < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_tutorials do |t|
      t.integer :tag_id
      t.integer :tutorial_id
    end
  end
end
