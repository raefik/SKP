class CreateTrackroles < ActiveRecord::Migration
  def change
    create_table :trackroles do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
