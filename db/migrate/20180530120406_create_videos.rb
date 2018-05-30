class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :playlist
      t.string :channel
      t.time :duration
      t.string :tutorial_id

      t.timestamps
    end
  end
end
