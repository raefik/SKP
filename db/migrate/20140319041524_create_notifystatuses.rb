class CreateNotifystatuses < ActiveRecord::Migration
  def change
    create_table :notifystatuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
