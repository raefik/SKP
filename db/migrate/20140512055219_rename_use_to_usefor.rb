class RenameUseToUsefor < ActiveRecord::Migration
  def up
  	rename_column :users, :use, :usefor
  end

  def down
  end
end
