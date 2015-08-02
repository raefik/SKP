class Role < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :users, :foreign_key => "role_code", :primary_key =>"code"
end
