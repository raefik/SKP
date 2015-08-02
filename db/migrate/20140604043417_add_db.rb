class AddDb < ActiveRecord::Migration
  def up
  	remove_column :tracks, :slot_id
  	remove_column :tracks, :starttime
  	remove_column :tracks, :endtime
  	remove_column :slots, :date

  	add_column :polls, :pollstatus_code, :string
  	add_column :tracks, :slot_code, :string
  	add_column :tracks, :date, :date
  	add_column :slots, :name, :string
  	add_column :slots, :code, :string
  end

  def down
  end
end
