class Poll < ActiveRecord::Base
  attr_accessible :presenter_id, :question, :status_code, :pollstatus_code

  has_many :pollanswers

  belongs_to :pollstatus, :foreign_key => "pollstatus_code", :primary_key =>"code"

end
