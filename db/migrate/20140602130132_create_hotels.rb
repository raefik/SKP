class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :code
      t.string :name
      t.string :description
      t.string :phone

      t.timestamps
    end
  end
end
