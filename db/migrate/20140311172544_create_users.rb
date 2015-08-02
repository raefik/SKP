class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_salt
      t.string :role_code
      t.string :push_notification

      t.timestamps
    end
  end
end
