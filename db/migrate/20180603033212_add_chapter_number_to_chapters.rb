class AddChapterNumberToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :chapter, :integer, unique: false
  end
end
