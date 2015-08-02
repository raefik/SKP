class AddColumnBaru < ActiveRecord::Migration
  def up
  	add_column :presenters, :registration_id, :integer
  end

  def down
  end
end
