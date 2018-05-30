class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :author
      t.string :url
      t.string :format
      t.integer :user_id

      t.timestamps
    end
  end
end
