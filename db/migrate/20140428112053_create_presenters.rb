class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.integer :gesparticipant_id
      t.string :identification
      t.string :username
      t.string :password
      t.string :password_salt
      t.string :email
      t.string :dob
      t.string :details

      t.timestamps
    end
  end
end
