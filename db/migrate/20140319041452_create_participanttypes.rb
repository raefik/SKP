class CreateParticipanttypes < ActiveRecord::Migration
  def change
    create_table :participanttypes do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
