class CreatePollstatuses < ActiveRecord::Migration
  def change
    create_table :pollstatuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
