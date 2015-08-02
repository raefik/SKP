class CreateTrackstatuses < ActiveRecord::Migration
  def change
    create_table :trackstatuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
