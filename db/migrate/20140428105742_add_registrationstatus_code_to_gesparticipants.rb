class AddRegistrationstatusCodeToGesparticipants < ActiveRecord::Migration
  def change
    add_column :gesparticipants, :registrationstatus_code, :string
  end
end
