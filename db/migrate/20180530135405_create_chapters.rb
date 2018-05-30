class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.float :start_page
      t.float :end_page
      t.string :book_title
      t.string :book_edition

      t.timestamps
    end
  end
end
