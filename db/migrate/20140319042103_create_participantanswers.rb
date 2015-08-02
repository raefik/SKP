class CreateParticipantanswers < ActiveRecord::Migration
  def change
    create_table :participantanswers do |t|
      t.integer :participant_id
      t.integer :pollanswer_id

      t.timestamps
    end
  end
end
