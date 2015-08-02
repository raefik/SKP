class Chat < ActiveRecord::Base
  attr_accessible :from, :message, :time
end
