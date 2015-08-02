class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.integer :presenter_id

      t.timestamps
    end
  end
end
