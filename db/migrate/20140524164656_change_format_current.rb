class ChangeFormatCurrent < ActiveRecord::Migration
  def up
  	change_column :rooms, :current, :int
  end

  def down
  	change_column :rooms, :current, :string
  end
end
