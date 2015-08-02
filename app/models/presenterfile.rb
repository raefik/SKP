class Presenterfile < ActiveRecord::Base
  attr_accessible :files, :member_id, :reg_id

  belongs_to :presenter, :foreign_key => "presenter_id", :primary_key =>"id"
end
