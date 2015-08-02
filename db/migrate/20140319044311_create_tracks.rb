class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :theme
      t.string :description
      t.string :room_code
      t.string :trackstatus_code
      t.string :session_code

      t.timestamps
    end
  end
end
