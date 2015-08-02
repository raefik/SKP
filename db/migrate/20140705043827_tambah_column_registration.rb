class TambahColumnRegistration < ActiveRecord::Migration
  def up
  	add_column :registrations, :title, :string
  	add_column :registrations, :organization, :string
  end

  def down
  end
end
