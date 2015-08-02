class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :code
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
