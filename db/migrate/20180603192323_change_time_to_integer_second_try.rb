class ChangeTimeToIntegerSecondTry < ActiveRecord::Migration[5.2]
  def change
    # ALTER TABLE videos ALTER COLUMN duration TYPE integer USING (trim(col_name)::integer);
    # change_column :videos, :duration, 'integer USING CAST(duration AS integer)'

  end
end
