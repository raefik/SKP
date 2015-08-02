class CreateGesparticipants < ActiveRecord::Migration
  def change
    create_table :gesparticipants do |t|
      t.string :participanttype_code
      t.integer :reg_id
      t.string :rfid
      t.string :hotelstatus_code
      t.string :transportstatus_code
      t.string :committeestatus_code

      t.timestamps
    end
  end
end
