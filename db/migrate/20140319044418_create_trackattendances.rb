class CreateTrackattendances < ActiveRecord::Migration
  def change
    create_table :trackattendances do |t|
      t.integer :track_id
      t.string :rfid
      t.datetime :first_in
      t.datetime :last_out

      t.timestamps
    end
  end
end
