class CreateTracktypes < ActiveRecord::Migration
  def change
    create_table :tracktypes do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
