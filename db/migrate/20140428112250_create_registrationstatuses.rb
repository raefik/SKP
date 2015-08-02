class CreateRegistrationstatuses < ActiveRecord::Migration
  def change
    create_table :registrationstatuses do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
