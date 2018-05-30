class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :learn_stars, :integer
    add_column :users, :teach_stars, :integer
    add_column :users, :create_stars, :integer
  end
end
