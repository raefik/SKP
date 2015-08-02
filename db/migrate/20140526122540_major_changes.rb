class MajorChanges < ActiveRecord::Migration
  def up
  	remove_column :tracks, :session_code
  	drop_table :sessions
  end

  def down
  end
end
