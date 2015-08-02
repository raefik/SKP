class AddColumnToTrackattendance < ActiveRecord::Migration
  def change
  	add_column :trackattendances, :out, :datetime
  end
end
