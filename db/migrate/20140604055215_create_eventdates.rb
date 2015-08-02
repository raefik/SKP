class CreateEventdates < ActiveRecord::Migration
  def change
    create_table :eventdates do |t|
      t.date :date

      t.timestamps
    end
  end
end
