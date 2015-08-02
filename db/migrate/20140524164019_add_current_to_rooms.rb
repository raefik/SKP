class AddCurrentToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :current, :string
  end
end
