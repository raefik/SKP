class AddTrackId < ActiveRecord::Migration
  def up
  	add_column :polls, :track_id, :integer
  end

  def down
  end
end
