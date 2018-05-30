class AddTutorialIdToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :tutorial_id, :integer
  end
end
