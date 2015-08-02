class AddImgToRooms < ActiveRecord::Migration
  def change
  	add_column :rooms, :img, :string
  end
end
