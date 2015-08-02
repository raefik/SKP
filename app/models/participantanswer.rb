class Participantanswer < ActiveRecord::Base
  attr_accessible :participant_id, :pollanswer_id

  belongs_to :pollanswer
  belongs_to :gesparticipant, :foreign_key => "participant_id", :primary_key =>"id"
end
