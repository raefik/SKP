class AddEventdateTrack < ActiveRecord::Migration
  def up
  	add_column :tracks, :eventdate_id, :string
  end

  def down
  end
end
