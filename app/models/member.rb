class Member < ActiveRecord::Base
	self.table_name = "tblMembers"

	has_many :registrations, :foreign_key => "Member_ID", :primary_key =>"Member_ID"
end
