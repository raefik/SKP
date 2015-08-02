class AddColumnTrack < ActiveRecord::Migration
  def up
  	add_column :tracks, :tracktype_code, :string
  end

  def down
  end
end
