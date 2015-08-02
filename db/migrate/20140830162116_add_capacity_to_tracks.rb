class AddCapacityToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :capacity, :integer
  end
end
