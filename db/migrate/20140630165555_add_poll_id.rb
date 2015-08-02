class AddPollId < ActiveRecord::Migration
  def up
  	add_column :participantanswers, :poll_id, :integer
  end

  def down
  end
end
