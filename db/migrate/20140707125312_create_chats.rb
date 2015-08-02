class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :from
      t.string :message
      t.string :time

      t.timestamps
    end
  end
end
