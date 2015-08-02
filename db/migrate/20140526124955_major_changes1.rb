class MajorChanges1 < ActiveRecord::Migration
  def up
  	add_column :tracks, :starttime, :datetime
  	add_column :tracks, :endtime, :datetime
  	add_column :presenters, :track_id, :integer
  end

  def down
  end
end
