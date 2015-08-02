class AddTagCodeToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :tag_code, :string
  end
end
