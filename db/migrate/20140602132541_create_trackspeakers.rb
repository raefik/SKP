class CreateTrackspeakers < ActiveRecord::Migration
  def change
    create_table :trackspeakers do |t|
      t.integer :presenter_id
      t.integer :track_id
      t.string :trackrole_code

      t.timestamps
    end
  end
end
