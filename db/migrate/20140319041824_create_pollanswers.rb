class CreatePollanswers < ActiveRecord::Migration
  def change
    create_table :pollanswers do |t|
      t.string :answer
      t.integer :poll_id

      t.timestamps
    end
  end
end
