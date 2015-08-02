class RenameColumnPresenterfile < ActiveRecord::Migration
  def up
  	 rename_column :presenterfiles, :member_id, :presenter_id
  end

  def down
  end
end
