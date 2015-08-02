class CreatePresenterfiles < ActiveRecord::Migration
  def change
    create_table :presenterfiles do |t|
      t.integer :member_id
      t.string :files
      t.integer :reg_id

      t.timestamps
    end
  end
end
