class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :fullname
      t.string :noic
      t.string :phone
      t.string :email
      t.string :image
      t.string :nationality_code
      t.string :hotel_code
      t.string :participanttype_code

      t.timestamps
    end
  end
end
