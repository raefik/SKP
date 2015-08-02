class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :use, :string
  end
end
