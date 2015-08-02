class TukarDbPresenter < ActiveRecord::Migration
  def up
  	remove_column :presenters, :track_id
  end

  def down
  end
end
