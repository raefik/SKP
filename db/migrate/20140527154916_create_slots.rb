class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.date :date
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
