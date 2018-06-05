class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :status
      # t.string :level
      t.float :page
      t.float :time
      t.integer :user_id
      t.integer :tutorial_id

      t.timestamps
    end
  end
end
