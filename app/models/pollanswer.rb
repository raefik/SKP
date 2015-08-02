class Pollanswer < ActiveRecord::Base
  attr_accessible :answer, :poll_id

  belongs_to :poll

  has_many :participantanswers
end
