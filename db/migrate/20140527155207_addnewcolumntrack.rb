class Addnewcolumntrack < ActiveRecord::Migration
  def up
  	add_column :tracks, :slot_id, :integer
  end

  def down
  end
end
