class AddNameToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :name, :text, unique: true
  end
end
